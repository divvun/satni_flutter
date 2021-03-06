// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:satni/generated/index.dart';
import 'package:satni/graphql/index.dart';

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
              ? Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GeneratedPage(
                      Arguments(
                        lemma.node!.presentationLemma,
                        lemma.node!.language,
                        '${lemma.node!.pos}',
                        'Default',
                        wantedParadigms(lemma.node!.language,
                            '${lemma.node!.pos}', 'Default'),
                      ),
                      Key(lemma.node!.presentationLemma),
                    ),
                  ),
                )
              : null,
          icon: const Icon(Icons.info_outline),
        )
      ],
    );
  }
}
