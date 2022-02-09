import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:satni_flutter/graphql_api.graphql.dart';
import 'package:satni_flutter/generated/generated.dart';

import '../articles.dart';

class ArticlesView extends ConsumerWidget {
  const ArticlesView({required String lemma, Key? key})
      : _lemma = lemma,
        super(key: key);

  final String _lemma;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(articlesProvider(_lemma)).when(
        loading: () => const CircularProgressIndicator(),
        data: (articles) => ListView(
              children: [..._articles(context, articles.terms, articles.dicts)],
            ),
        error: (_, __) => const Text('Oops, articles went awry'));
  }

  List<Widget> _articles(
      BuildContext context,
      Map<String, List<TermArticles$Query$ConceptType>> terms,
      DictArticles$Query dicts) {
    return [..._makeTerms(context, terms), ..._makeDicts(context, dicts)];
  }

  List<Widget> _makeTerms(BuildContext context,
      Map<String, List<TermArticles$Query$ConceptType>> terms) {
    return terms.entries
        .map((entry) => TermArticle(
              entry.key,
              entry.value,
            ))
        .toList();
  }

  List<Widget> _makeDicts(BuildContext context, DictArticles$Query dicts) {
    return dicts.dictEntryList!
        .map((dictEntry) => DictArticle(dictEntry))
        .toList();
  }
}

class DictArticle extends StatelessWidget {
  const DictArticle(this.dictEntry, {Key? key}) : super(key: key);

  final DictArticles$Query$DictEntryType dictEntry;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              dictEntry.dictName,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            child: Divider(),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: _articleContent(context, dictEntry))
        ],
      ),
    );
  }

  Widget _articleContent(
      BuildContext context, final DictArticles$Query$DictEntryType dictEntry) {
    return Column(children: [
      ..._lookupLemmas(context, dictEntry.lookupLemmas),
      Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(children: [
          ..._translationGroups(context, dictEntry.translationGroups)
        ]),
      ),
    ]);
  }

  List<Widget> _lookupLemmas(BuildContext context,
      DictArticles$Query$DictEntryType$LemmaTypeConnection? lemmas) {
    return lemmas!.edges
        .map(
          (lemma) => Row(
            children: <Widget>[
              Text(
                '${lemma!.node!.presentationLemma}',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const Spacer(),
              Text(
                '${lemma.node!.pos}',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              IconButton(
                // ignore: avoid_returning_null_for_void
                onPressed: () => lemma.node != null
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GeneratedPage(
                              Arguments(
                                lemma.node!.presentationLemma ?? 'guolli',
                                lemma.node!.language ?? 'sme',
                                lemma.node!.pos ?? 'N',
                              ),
                              Key(lemma.node!.presentationLemma ?? 'guolli')),
                        ))
                    : null,
                icon: const Icon(Icons.info_outline),
              )
            ],
          ),
        )
        .toList();
  }

  List<Widget> _translationGroups(
      BuildContext context,
      List<DictArticles$Query$DictEntryType$TranslationGroupType>
          translationGroups) {
    return translationGroups
        .map((translationGroup) => _translationGroup(context, translationGroup))
        .toList();
  }

  Widget _translationGroup(BuildContext context,
      DictArticles$Query$DictEntryType$TranslationGroupType translationGroup) {
    return Column(
      children: [
        ..._translationLemmas(context, translationGroup.translationLemmas,
            translationGroup.restriction),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(children: [
            ..._examples(context, translationGroup.exampleGroups)
          ]),
        ),
      ],
    );
  }

  List<Widget> _translationLemmas(
      BuildContext context,
      DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection?
          lemmas,
      DictArticles$Query$DictEntryType$TranslationGroupType$RestrictionType?
          restriction) {
    return lemmas!.edges
        .map(
          (lemma) => Row(
            children: <Widget>[
              Text(
                '${lemma!.node!.presentationLemma}',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              restriction != null
                  ? Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text('(${restriction.restriction})'),
                    )
                  : const Text(''),
              const Spacer(),
              Text(
                '${lemma.node!.pos}',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              IconButton(
                // ignore: avoid_returning_null_for_void
                onPressed: () => lemma.node != null
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GeneratedPage(
                              Arguments(
                                lemma.node!.presentationLemma ?? 'guolli',
                                lemma.node!.language ?? 'sme',
                                lemma.node!.pos ?? 'N',
                              ),
                              Key(lemma.node!.presentationLemma ?? 'guolli')),
                        ))
                    : null,
                icon: const Icon(Icons.info_outline),
              )
            ],
          ),
        )
        .toList();
  }

  List<Widget> _examples(
      BuildContext context,
      List<DictArticles$Query$DictEntryType$TranslationGroupType$ExampleGroupType?>?
          exampleGroups) {
    return exampleGroups!
        .map((exampleGroup) => Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Column(
                children: [
                  Text(exampleGroup!.example),
                  Text(
                    exampleGroup.translation,
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ))
        .toList();
  }
}

class TermArticle extends StatelessWidget {
  const TermArticle(this.articleName, this.terms, {Key? key}) : super(key: key);

  final String articleName;
  final List<TermArticles$Query$ConceptType> terms;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              articleName,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          ..._conceptList(context, terms)
        ],
      ),
    );
  }

  List<Widget> _conceptList(
      BuildContext context, List<TermArticles$Query$ConceptType> concepts) {
    return concepts
        .map((concept) => Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Column(children: [
                const Divider(),
                Text(
                  '${concept.terms[0].expression.language}',
                  style: Theme.of(context).textTheme.caption,
                ),
                ..._termList(context, concept.terms),
              ]),
            ))
        .toList();
  }

  List<Widget> _termList(BuildContext context,
      List<TermArticles$Query$ConceptType$TermType> turms) {
    return turms
        .map(
          (term) => Row(
            children: <Widget>[
              Text(
                '${term.expression.presentationLemma}',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const Spacer(),
              Text(
                '${term.expression.pos}',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              IconButton(
                // ignore: avoid_returning_null_for_void
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GeneratedPage(
                          Arguments(
                            term.expression.presentationLemma ?? 'guolli',
                            term.expression.language ?? 'sme',
                            term.expression.pos ?? 'N',
                          ),
                          Key(term.expression.presentationLemma ?? 'guolli')),
                    )),
                icon: const Icon(Icons.info_outline),
              )
            ],
          ),
        )
        .toList();
  }
}
