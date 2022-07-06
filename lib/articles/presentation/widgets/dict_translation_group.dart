// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:satni/graphql_api.graphql.dart';
import '../index.dart';

class DictTranslationGroup extends StatelessWidget {
  const DictTranslationGroup(
    this.translationGroup, {
    Key? key,
  }) : super(key: key);

  final DictArticles$Query$DictEntryType$TranslationGroupType translationGroup;
  @override
  Widget build(BuildContext context) {
    final restriction = translationGroup.restriction;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...translationGroup.translationLemmas!.edges.map(
          (lemma) => DictTranslationLemma(lemma!, restriction),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: translationGroup.exampleGroups!
              .map((exampleGroup) => ExampleGroup(exampleGroup!))
              .toList(),
        ),
      ],
    );
  }
}
