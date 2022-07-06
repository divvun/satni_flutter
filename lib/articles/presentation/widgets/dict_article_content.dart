// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:satni/graphql/index.dart';
import '../index.dart';

class DictArticleContent extends StatelessWidget {
  const DictArticleContent(
    this.dictEntry, {
    Key? key,
  }) : super(key: key);

  final DictArticles$Query$DictEntryType dictEntry;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...dictEntry.lookupLemmas!.edges.map(
          (lemma) => DictLookupLemma(lemma!),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            children: dictEntry.translationGroups
                .map((translationGroup) =>
                    DictTranslationGroup(translationGroup!))
                .toList(),
          ),
        ),
      ],
    );
  }
}
