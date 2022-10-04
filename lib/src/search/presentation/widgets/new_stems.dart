// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:satni_graphql_service/satni_graphql_service.dart';

// Project imports:
import '../../../filter/application/filter_notifier.dart';
import '../../../routing/app_router.dart';
import '../../application/search_service.dart';

class NewStems extends ConsumerWidget {
  NewStems({
    required Stems data,
    Key? key,
  })  : _data = data,
        super(key: key);

  final Stems _data;
  final _scrollController = ScrollController();

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    bool fetchingMore = false;
    final itemCount = _data.stemList.length;

    if (itemCount == 0) {
      return Container();
    }

    if (_data.hasNextPage) {
      _scrollController.addListener(() {
        var triggerFetchMoreSize =
            0.9 * _scrollController.position.maxScrollExtent;
        if (_scrollController.position.pixels > triggerFetchMoreSize) {
          if (!fetchingMore) {
            fetchingMore = true;
            ref.read(searchControllerProvider.notifier).fetchMoreStems();
          }
        }
      });
    }
    List<String> stems = [];

    for (final edge in _data.stemList) {
      final tu = edge.stem.toString();
      stems.add(tu);
    }

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          shrinkWrap: true,
          controller: _scrollController,
          scrollDirection: Axis.vertical,
          children: ListTile.divideTiles(
            context: context,
            tiles: _data.stemList.map(
              (stemNode) => StemTile(stemNode),
            ),
          ).toList(),
        ),
      ),
    );
  }
}

class StemTile extends ConsumerWidget {
  const StemTile(
    this.stemNode, {
    Key? key,
  }) : super(key: key);

  final Stem stemNode;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final wantedDicts = ref.watch(filterProvider).wantedDicts;
    final hits = stemNode.dicts
        .where((edge) => wantedDicts.contains(edge.dictname))
        .fold(0, (int previousValue, edge) => previousValue + edge.dicthits);

    return ListTile(
      title: SizedBox(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Text(stemNode.stem),
            ),
            Text('(${stemNode.srclang})'),
            Expanded(
              child: Text('$hits', textAlign: TextAlign.end),
            )
          ],
        ),
      ),
      subtitle: (hits > 1) ? Text('$hits') : null,
      trailing: const Icon(Icons.star_border_rounded),
      onTap: () => context.pushNamed(
        DivvunRoutes.articles.name,
        params: {'lemma': stemNode.stem},
      ),
    );
  }
}
