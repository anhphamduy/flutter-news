import 'dart:collection';

import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';

import 'article.dart';

class HackerNewsBloc {
  Stream<List<Article>> get articles => _articlesSubject.stream;

  final _articlesSubject = BehaviorSubject<UnmodifiableListView<Article>>();

  var _articles = <Article>[];

  List<int> _ids = [
    21103683,
    21100588,
    21094231,
    21116355,
    21108665,
    21114106,
    21093729,
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
    _getArticles().then((_) {
      _articlesSubject.add(UnmodifiableListView(_articles));
    });
  }

  Future<Null> _getArticles() async {
    final futureArticles = _ids.map((id) => _getArticle(id));
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
