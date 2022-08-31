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
    required Query$AllLemmas? data,
    Key? key,
  })  : _data = data,
        super(key: key);

  final Query$AllLemmas? _data;
  final _scrollController = ScrollController();

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final itemCount = _data?.stemList!.edges.length;

    if (_data == null || itemCount == 0) {
      return Container();
    }

    _scrollController.addListener(() {
      var triggerFetchMoreSize =
          0.9 * _scrollController.position.maxScrollExtent;
      if (_data == null &&
          _data!.stemList!.pageInfo.hasNextPage &&
          _scrollController.position.pixels > triggerFetchMoreSize) {
        ref
            .read(searchControllerProvider.notifier)
            .fetchMoreStems('${_data!.stemList!.pageInfo.endCursor}');
      }
    });
    List<String> stems = [];

    for (final edge in _data!.stemList!.edges) {
      final tu = edge!.node!.stem.toString();
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
            tiles: _data!.stemList!.edges.map((edge) => edge!.node).map(
                  (stemNode) => StemTile(stemNode!),
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

  final Query$AllLemmas$stemList$edges$node stemNode;
  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final wantedDicts = ref.watch(filterProvider).wantedDicts;

    return ListTile(
      title: Text(stemNode.stem),
      subtitle: Text(
          '${stemNode.dicts?.edges.where((edge) => wantedDicts.contains(edge!.node!.dictname)).fold(0, (int previousValue, edge) => previousValue + edge!.node!.dicthits)}'),
      leading: Text(stemNode.srclang),
      trailing: const Icon(Icons.star_border_rounded),
      onTap: () => context.pushNamed(
        DivvunRoutes.articles.name,
        params: {'lemma': stemNode.stem},
      ),
    );
  }
}
