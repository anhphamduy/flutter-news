import 'article.dart';

class HackerNewsBloc {
  Stream<List<Article>> get articles => _articlesSubject.stream;


}