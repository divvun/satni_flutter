// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:satni/graphql_api.dart';
import 'package:satni/search/search.dart';

class HitCounter extends ConsumerWidget {
  const HitCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stemState = ref.watch(stemNotifierProvider);

    return stemState.when(
      error: (error) => Container(),
      initial: () => Container(),
      loading: () => Container(),
      loadingMore: (data) => _searchStatus(data, ref),
      success: (data) => _searchStatus(data, ref),
    );
  }

  Widget _searchStatus(AllLemmas$Query data, WidgetRef ref) {
    final searchText =
        ref.watch(searchProvider.select((search) => search.searchText));
    return (data.stemList!.totalCount! > 0)
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                '$searchText: ${data.stemList!.edges.length}/${data.stemList!.totalCount}'),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('$searchText: Nothing found'),
          );
  }
}
