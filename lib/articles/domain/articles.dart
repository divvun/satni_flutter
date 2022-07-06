// Project imports:
import 'package:satni/graphql/index.dart';

class Articles {
  Articles(this.terms, this.dicts);

  final DictArticles$Query dicts;
  final Map<String, List<TermArticles$Query$ConceptType>> terms;
}
