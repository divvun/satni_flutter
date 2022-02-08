import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:satni_flutter/api.dart';
import 'package:satni_flutter/filter/filter.dart';
import 'package:satni_flutter/filter/pod/filter.dart';
import 'package:satni_flutter/graphql_api.dart';

import '../pod/search.dart';

final stemProvider = FutureProvider<AllLemmas$Query>((ref) async {
  final search = ref.watch(searchProvider);
  final filter = ref.watch(filterProvider);

  final stems = await getStems(search.searchText, search.searchMode,
      filter.wantedSrcLangs, filter.wantedTargetLangs, filter.wantedDicts);
  return stems;
});

class SearchPage extends ConsumerWidget {
  SearchPage({Key? key}) : super(key: key);

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sátni.org'),
        actions: const [FilterButton()],
      ),
      body: Column(
        children: [
          Flexible(
            child: TextField(
              controller: _textController,
              onChanged: (text) =>
                  ref.read(searchProvider.notifier).updateSearchText(text),
            ),
          ),
          Center(
            child: Consumer(
              builder: ((context, ref, child) {
                final search = ref.watch(searchProvider);
                final filter = ref.watch(filterProvider);
                if (search.searchText.isEmpty) {
                  return Text('Init: $search $filter');
                } else {
                  AsyncValue<AllLemmas$Query> config = ref.watch(stemProvider);

                  return config.when(
                    loading: () => const CircularProgressIndicator(),
                    error: (err, stack) => Text('Error: $err'),
                    data: (stems) {
                      return NewStems(data: stems);
                    },
                  );
                }
              }),
            ),
          )
        ],
      ),
    );
  }
}

class NewStems extends StatelessWidget {
  NewStems({required AllLemmas$Query data, Key? key})
      : _data = data,
        super(key: key);

  final AllLemmas$Query _data;
  final _scrollController = ScrollController();

  @override
  Widget build(
    BuildContext context,
  ) {
    final itemCount = _data.stemList!.edges.length;

    if (itemCount == 0) {
      return Container();
    }

    List<String> stems = [];

    for (final edge in _data.stemList!.edges) {
      final tu = edge!.node!.stem.toString();
      stems.add(tu);
    }

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: stems.map(
              (stem) => ListTile(
                title: Text(stem),
                trailing: const Icon(Icons.star_border_rounded),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      print('article $stem');
                      //   ArticlesPage(
                      //   stem,
                      //   Key(stem)
                      // );
                      return const Text('hallo');
                    },
                  ),
                ),
              ),
            ),
          ).toList(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          controller: _scrollController,
        ),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.checklist_rounded),
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FilterPage(),
          )),
    );
  }
}
