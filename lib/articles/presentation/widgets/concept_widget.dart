// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:satni/graphql/index.dart';
import '../index.dart';

class ConceptWidget extends StatelessWidget {
  const ConceptWidget(
    this.concept, {
    Key? key,
  }) : super(key: key);

  final TermArticles$Query$ConceptType concept;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(children: [
        const Divider(),
        Text(
          concept.terms[0]!.expression!.language,
          style: Theme.of(context).textTheme.caption,
        ),
        ...concept.terms.map(
          (term) => TermEntry(term!),
        ),
      ]),
    );
  }
}
