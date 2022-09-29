// Project imports:
import '../../graphql/queries/dict_articles.graphql.dart';
import '../../graphql/queries/term_articles.graphql.dart';

class Articles {
  Articles(this.terms, this.dicts);

  final Query$DictArticles? dicts;
  final Query$TermArticles? terms;
}
