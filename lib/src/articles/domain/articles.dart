// Package imports:
import 'package:satni_graphql_service/satni_graphql_service.dart';

class Articles {
  Articles(this.terms, this.dicts);

  final Query$DictArticles? dicts;
  final Query$TermArticles? terms;
}
