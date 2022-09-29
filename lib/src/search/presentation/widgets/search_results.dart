// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../data/search_repository.dart';
import 'new_stems.dart';
import 'welcome.dart';

class SearchResults extends ConsumerWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchState = ref.watch(searchRepositoryProvider);

    return searchState.when(
      error: (error) => Text(error),
      initial: () => const Welcome(),
      loading: () => const CircularProgressIndicator(),
      loadingMore: (data) => NewStems(data: data),
      success: (data) => NewStems(data: data),
    );
  }
}
