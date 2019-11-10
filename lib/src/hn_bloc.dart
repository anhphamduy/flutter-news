import 'dart:async';
import 'dart:collection';

import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';

import 'article.dart';

enum StoriesType { topStories, newStories }

class HackerNewsBloc {
  Stream<UnmodifiableListView<Article>> get articles => _articlesSubject.stream;

  Stream<bool> get isLoading => _isLoadingSubject.stream;

  Sink<StoriesType> get storiesType => _storiesTypeController.sink;

  final _isLoadingSubject = BehaviorSubject<bool>();

  final _articlesSubject = BehaviorSubject<UnmodifiableListView<Article>>();

  var _articles = <Article>[];

  final _storiesTypeController = StreamController<StoriesType>();

  static List<int> _newsIds = [
    21103683,
    21100588,
    21094231,
    21116355,
    21108665,
    21114106,
    21093729,
  ];

  static List<int> _topIds = [
    21113733,
    21105625,
    21113414,
    21109801,
    21112176,
    21104176,
    21118018,
    21100274
  ];

  HackerNewsBloc() {
    _getArticlesAndUpdate(_topIds);

    _storiesTypeController.stream.listen((storiesType) {
      List<int> ids;
      if (storiesType == StoriesType.newStories) {
        ids = _newsIds;
      } else {
        ids = _topIds;
      }
      _getArticlesAndUpdate(ids);
    });
  }

  _getArticlesAndUpdate(List<int> ids) {
    _isLoadingSubject.add(true);
    _updateArticles(ids).then((_) {
      _articlesSubject.add(UnmodifiableListView(_articles));
      _isLoadingSubject.add(false);
    });
  }

  Future<Null> _updateArticles(List<int> ids) async {
    final futureArticles = ids.map((id) => _getArticle(id));
    final articles = await Future.wait(futureArticles);
    _articles = articles;
  }

  Future<Article> _getArticle(int id) async {
    final storyUrl = 'https://hacker-news.firebaseio.com/v0/item/$id.json';
    final res = await http.get(storyUrl);
    if (res.statusCode == 200) {
      return parseArticle(res.body);
    }
    return null;
  }
}
