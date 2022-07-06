// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:satni/graphql_api.dart';
import 'package:satni/search/index.dart';

class SearchStatus extends ConsumerWidget {
  const SearchStatus(this.data, {Key? key}) : super(key: key);

  final AllLemmas$Query data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
