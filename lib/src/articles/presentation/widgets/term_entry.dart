// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:satni_graphql_service/satni_graphql_service.dart';

// Project imports:
import '../../../routing/app_router.dart';

class TermEntry extends StatelessWidget {
  const TermEntry(
    this.term, {
    Key? key,
  }) : super(key: key);

  final Term term;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          term.expression.presentationLemma,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const Spacer(),
        Text(
          term.expression.pos,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        IconButton(
          icon: const Icon(Icons.info_outline),
          onPressed: () => context.pushNamed(
            DivvunRoutes.paradigm.name,
            params: {
              'lemma': term.expression.presentationLemma,
            },
            queryParams: {
              'lang': term.expression.language,
              'pos': term.expression.pos,
              'posDomain': 'Default',
            },
          ),
        )
      ],
    );
  }
}
