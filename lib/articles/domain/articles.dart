// Project imports:
import 'package:satni/graphql_api.dart';

class Articles {
  Articles(this.terms, this.dicts);

  final DictArticles$Query dicts;
  final Map<String, List<TermArticles$Query$ConceptType>> terms;
}
