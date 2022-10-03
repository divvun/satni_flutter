// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:satni_graphql_service/satni_graphql_service.dart';

// Project imports:
import '../../domain/search_notifier.dart';

class SearchStatus extends ConsumerWidget {
  const SearchStatus(this.data, {Key? key}) : super(key: key);

  final Stems data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchText =
        ref.watch(searchProvider.select((search) => search.searchText));
    return (data.totalCount > 0)
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Text('$searchText: ${data.stemList.length}/${data.totalCount}'),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('$searchText: Nothing found'),
          );
  }
}
