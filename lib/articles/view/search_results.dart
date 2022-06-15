// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:satni/search/search.dart';
import 'articles.dart';

class SearchResults extends ConsumerWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stemState = ref.watch(stemNotifierProvider);

    return stemState.when(
      error: (error) => Text(error),
      initial: () => const Text('Welcome'),
      loading: () => const CircularProgressIndicator(),
      loadingMore: (data) => NewStems(data: data),
      success: (data) => NewStems(data: data),
    );
  }
}
