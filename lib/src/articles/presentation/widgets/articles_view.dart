// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
          return ListView(
            children: [
              ...articles.map((e) => e.when(
                    term: (article) => TermArticleView(article),
                    dict: (article) => DictArticleView(article),
                  ))
            ],
          );
        },
        error: (e, st) => Text('${e.toString()}\n' '${st.toString()}'));
  }
}
