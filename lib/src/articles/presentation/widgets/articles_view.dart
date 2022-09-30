// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:satni_graphql_service/satni_graphql_service.dart';

// Project imports:
import '../articles_controller.dart';
import 'dict_article.dart';
import 'term_article.dart';

class ArticlesView extends ConsumerWidget {
  const ArticlesView({required String lemma, Key? key})
      : _lemma = lemma,
        super(key: key);

  final String _lemma;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(articlesControllerProvider(_lemma)).when(
        loading: () => const CircularProgressIndicator(),
        data: (articles) {
          final termArticles = articles.terms?.conceptList;
          final Map<String, List<Query$TermArticles$conceptList>>
              orderedTermArticles = {};
          termArticles?.forEach((element) {
            final name = element?.name;
            if (!orderedTermArticles.containsKey(name)) {
              orderedTermArticles[name!] = [];
            }
            orderedTermArticles[name]!.add(element!);
          });

          return ListView(
            children: [
              ...orderedTermArticles.entries.map(
                (entry) => TermArticleView(
                  entry.key,
                  entry.value,
                ),
              ),
              ...articles.dicts!.dictEntryList!.map(
                (dictEntry) => DictArticleView(dictEntry),
              )
            ],
          );
        },
        error: (_, __) => const Text('Oops, articles went awry'));
  }
}
