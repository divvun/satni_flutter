// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../graphql/queries/dict_articles.graphql.dart';
import 'dict_translation_lemma.dart';
import 'example_group.dart';

class DictTranslationGroup extends StatelessWidget {
  const DictTranslationGroup(
    this.translationGroup, {
    Key? key,
  }) : super(key: key);

  final Query$DictArticles$dictEntryList$translationGroups translationGroup;

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
