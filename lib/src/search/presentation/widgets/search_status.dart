// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../../graphql/queries/all_lemmas.graphql.dart';
import '../../domain/search_notifier.dart';

class SearchStatus extends ConsumerWidget {
  const SearchStatus(this.data, {Key? key}) : super(key: key);

  final Query$AllLemmas data;

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
