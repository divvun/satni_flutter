// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:satni/generated/generated.dart';
import 'package:satni/generated/models/paradigm_templates.dart';
import 'package:satni/graphql_api.dart';

class TermEntry extends StatelessWidget {
  const TermEntry(
    this.term, {
    Key? key,
  }) : super(key: key);

  final TermArticles$Query$ConceptType$TermType term;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          term.expression!.presentationLemma,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const Spacer(),
        Text(
          '${term.expression!.pos}',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GeneratedPage(
                Arguments(
                  term.expression!.presentationLemma,
                  term.expression!.language,
                  '${term.expression!.pos}',
                  'Default',
                  wantedParadigms(term.expression!.language,
                      '${term.expression!.pos}', 'Default'),
                ),
                Key(term.expression!.presentationLemma),
              ),
            ),
          ),
          icon: const Icon(Icons.info_outline),
        )
      ],
    );
  }
}
