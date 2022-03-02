import 'package:satni/graphql_api.dart';

class Articles {
  final Map<String, List<TermArticles$Query$ConceptType>> terms;
  final DictArticles$Query dicts;

  Articles(this.terms, this.dicts);
}
