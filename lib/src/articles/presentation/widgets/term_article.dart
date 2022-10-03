// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:satni_graphql_service/satni_graphql_service.dart';

// Project imports:
import 'concept_widget.dart';

class TermArticleView extends StatelessWidget {
  const TermArticleView(this.article, {Key? key})
      : super(key: key);


  final MultiLangConcept article;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              article.name,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          ...article.concepts.map((concept) => ConceptWidget(concept))
        ],
      ),
    );
  }
}
