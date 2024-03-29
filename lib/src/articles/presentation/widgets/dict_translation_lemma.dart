// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:satni_graphql_service/satni_graphql_service.dart';

// Project imports:
import '../../../routing/app_router.dart';

class DictTranslationLemma extends StatelessWidget {
  const DictTranslationLemma(
    this.lemma,
    this.restriction, {
    Key? key,
  }) : super(key: key);

  final Lemma lemma;
  final Restriction? restriction;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          lemma.presentationLemma,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        restriction != null
            ? Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text('(${restriction!.restriction})'),
              )
            : const Text(''),
        const Spacer(),
        Text(
          lemma.pos,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        IconButton(
          onPressed: () => context.pushNamed(
            DivvunRoutes.paradigm.name,
            params: {
              'lemma': lemma.presentationLemma,
            },
            queryParams: {
              'lang': lemma.language,
              'pos': lemma.pos,
              'posDomain': 'Default',
            },
          ),
          icon: const Icon(Icons.info_outline),
        )
      ],
    );
  }
}
