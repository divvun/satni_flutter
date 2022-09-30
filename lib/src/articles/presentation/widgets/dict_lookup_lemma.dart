// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:satni_graphql_service/satni_graphql_service.dart';

// Project imports:
import '../../../generated/domain/paradigm_templates.dart';
import '../../../routing/app_router.dart';

class DictLookupLemma extends StatelessWidget {
  const DictLookupLemma(
    this.lemma, {
    Key? key,
  }) : super(key: key);

  final Lemma lemma;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          lemma.presentationLemma,
          style: Theme.of(context).textTheme.bodyText1,
        ),
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
              'lang': lemma,
              'pos': lemma.pos,
              'posDomain': getTemplateName(
                lemma.pos,
                lemma.language,
                {for (var e in lemma.spuriousAttributes) e.name: e.value},
              ),
            },
          ),
          icon: const Icon(Icons.info_outline),
        )
      ],
    );
  }
}
