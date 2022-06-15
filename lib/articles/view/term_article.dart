// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:satni/graphql_api.dart';
import 'articles.dart';

class TermArticle extends StatelessWidget {
  const TermArticle(this.articleName, this.concepts, {Key? key})
      : super(key: key);

  final String articleName;
  final List<TermArticles$Query$ConceptType> concepts;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              articleName,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          ...concepts.map((concept) => ConceptWidget(concept))
        ],
      ),
    );
  }
}
