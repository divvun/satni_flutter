// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:satni/generated/generated.dart';
import 'package:satni/generated/models/paradigm_templates.dart';
import 'package:satni/graphql_api.graphql.dart';
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
              children: [
                ...articles.terms.entries.map(
                  (entry) => TermArticle(
                    entry.key,
                    entry.value,
                  ),
                ),
                ...articles.dicts.dictEntryList!.map(
                  (dictEntry) => DictArticle(dictEntry!),
                )
              ],
            ),
        error: (_, __) => const Text('Oops, articles went awry'));
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
              child: DictArticleContent(dictEntry))
        ],
      ),
    );
  }
}

class DictArticleContent extends StatelessWidget {
  const DictArticleContent(
    this.dictEntry, {
    Key? key,
  }) : super(key: key);
  final DictArticles$Query$DictEntryType dictEntry;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...dictEntry.lookupLemmas!.edges.map(
          (lemma) => DictLookupLemma(lemma!),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            children: dictEntry.translationGroups
                .map((translationGroup) =>
                    DictTranslationGroup(translationGroup!))
                .toList(),
          ),
        ),
      ],
    );
  }
}

class DictTranslationGroup extends StatelessWidget {
  const DictTranslationGroup(
    this.translationGroup, {
    Key? key,
  }) : super(key: key);

  final DictArticles$Query$DictEntryType$TranslationGroupType translationGroup;
  @override
  Widget build(BuildContext context) {
    final restriction = translationGroup.restriction;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...translationGroup.translationLemmas!.edges.map(
          (lemma) => DictTranslationLemma(lemma!, restriction),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: translationGroup.exampleGroups!
              .map((exampleGroup) => ExampleGroup(exampleGroup!))
              .toList(),
        ),
      ],
    );
  }
}

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
                    builder: (context) => _generated(
                      lemma.node!.presentationLemma,
                      lemma.node!.language,
                      lemma.node!.pos,
                      'Default',
                    ),
                  ))
              : null,
          icon: const Icon(Icons.info_outline),
        )
      ],
    );
  }
}

class ExampleGroup extends StatelessWidget {
  const ExampleGroup(
    this.exampleGroup, {
    Key? key,
  }) : super(key: key);

  final DictArticles$Query$DictEntryType$TranslationGroupType$ExampleGroupType
      exampleGroup;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.only(left: 8.0),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: 4,
                    color: Theme.of(context).dividerColor,
                  ),
                ),
              ),
              child: Text(exampleGroup.example)),
          Container(
            padding: const EdgeInsets.only(left: 8.0),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  width: 4,
                  color: Theme.of(context).dividerColor,
                ),
              ),
            ),
            child: Text(
              exampleGroup.translation,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}

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
                    builder: (context) => _generated(
                      lemma.node!.presentationLemma,
                      lemma.node!.language,
                      lemma.node!.pos,
                      'Default',
                    ),
                  ))
              : null,
          icon: const Icon(Icons.info_outline),
        )
      ],
    );
  }
}

class TermArticle extends StatelessWidget {
  const TermArticle(this.articleName, this.concepts, {Key? key})
      : super(key: key);

  final String articleName;
  final List<TermArticles$Query$ConceptType> concepts;

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
          ...concepts.map((concept) => ConceptWidget(concept))
        ],
      ),
    );
  }
}

class ConceptWidget extends StatelessWidget {
  const ConceptWidget(
    this.concept, {
    Key? key,
  }) : super(key: key);

  final TermArticles$Query$ConceptType concept;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(children: [
        const Divider(),
        Text(
          concept.terms[0]!.expression!.language,
          style: Theme.of(context).textTheme.caption,
        ),
        ...concept.terms.map(
          (term) => TermEntry(term!),
        ),
      ]),
    );
  }
}

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
                builder: (context) => _generated(
                  term.expression!.presentationLemma,
                  term.expression!.language,
                  term.expression!.pos,
                  'Default',
                ),
              )),
          icon: const Icon(Icons.info_outline),
        )
      ],
    );
  }
}

Widget _generated(
    String lemma, String language, String? pos, String posDomain) {
  return GeneratedPage(
      Arguments(
        lemma,
        language,
        pos!,
        posDomain,
        wantedParadigms(language, pos, posDomain),
      ),
      Key(lemma));
}
