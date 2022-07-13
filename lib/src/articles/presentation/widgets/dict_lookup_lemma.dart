// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:satni_graphql_service/satni_graphql_service.dart';

// Project imports:
import '../../../routing/app_router.dart';

class DictLookupLemma extends StatelessWidget {
  const DictLookupLemma(
    this.lemma, {
    Key? key,
  }) : super(key: key);

  final Query$DictArticles$dictEntryList$lookupLemmas$edges lemma;

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
                    'posDomain': 'Default',
                  },
                )
              : null,
          icon: const Icon(Icons.info_outline),
        )
      ],
    );
  }
}
