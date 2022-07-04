// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:satni/search/search.dart';

class SearchPage extends HookConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sátni.org'),
      ),
      body: Column(
        children: [
          const Status(),
          const Searcher(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              children: const [
                HitCounter(),
                Lemmatised(),
              ],
            ),
          ),
          const SearchResults(),
        ],
      ),
    );
  }
}
