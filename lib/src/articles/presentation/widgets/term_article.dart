// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:satni_graphql_service/satni_graphql_service.dart';

// Project imports:
import 'concept_widget.dart';

class TermArticleView extends StatelessWidget {
  const TermArticleView(this.articleName, this.concepts, {Key? key})
      : super(key: key);

  final String articleName;

  final List<Concept> concepts;

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
