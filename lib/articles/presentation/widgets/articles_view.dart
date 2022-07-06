// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import '../../index.dart';

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
