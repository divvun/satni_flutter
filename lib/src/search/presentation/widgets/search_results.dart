// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:satni/src/search/application/search_service.dart';
import 'new_stems.dart';

class SearchResults extends ConsumerWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchState = ref.watch(searchControllerProvider);

    return searchState.when(
        loading: () => const CircularProgressIndicator(),
        data: (data) => NewStems(data: data),
        error: ((error, _) => Text(error.toString())));
  }
}
