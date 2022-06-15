// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:satni/generated/generated.dart';
import 'package:satni/generated/models/paradigm_templates.dart';
import 'package:satni/graphql_api.dart';

class DictTranslationLemma extends StatelessWidget {
  const DictTranslationLemma(
    this.lemma,
    this.restriction, {
    Key? key,
  }) : super(key: key);

  final DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge
      lemma;
  final DictArticles$Query$DictEntryType$TranslationGroupType$RestrictionType?
      restriction;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          lemma.node!.presentationLemma,
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
