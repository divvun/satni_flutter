// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:satni_graphql_service/satni_graphql_service.dart';

// Project imports:
import 'dict_lookup_lemma.dart';
import 'dict_translation_group.dart';

class DictArticleContent extends StatelessWidget {
  const DictArticleContent(
    this.dictEntry, {
    Key? key,
  }) : super(key: key);

  final Query$DictArticles$dictEntryList? dictEntry;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...dictEntry!.lookupLemmas.map(
          (lemma) => DictLookupLemma(lemma!),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            children: dictEntry!.translationGroups
                .map((translationGroup) =>
                    DictTranslationGroup(translationGroup!))
                .toList(),
          ),
        ),
      ],
    );
  }
}
