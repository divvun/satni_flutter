// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:satni/src/graphql/index.dart';
import 'package:satni/src/routing/index.dart';

class DictLookupLemma extends StatelessWidget {
  const DictLookupLemma(
    this.lemma, {
    Key? key,
  }) : super(key: key);

  final DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge
      lemma;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          lemma.node!.presentationLemma,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const Spacer(),
        Text(
          '${lemma.node!.pos}',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        IconButton(
          onPressed: () => lemma.node != null
              ? context.pushNamed(
                  DivvunRoutes.paradigm.name,
                  params: {
                    'lemma': lemma.node!.presentationLemma,
                  },
                  queryParams: {
                    'lang': lemma.node!.language,
                    'pos': '${lemma.node!.pos}',
                  },
                )
              : null,
          icon: const Icon(Icons.info_outline),
        )
      ],
    );
  }
}
