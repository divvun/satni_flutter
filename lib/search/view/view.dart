// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:satni/filter/filter.dart';
import 'package:satni/filter/pod/filter.dart';
import 'package:satni/graphql_api.dart';
import 'package:satni/lemmatised/lemmatised.dart';
import 'package:satni/search/search.dart';

class Searcher extends HookConsumerWidget {
  const Searcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _textController = useTextEditingController();
    final _focusNode = useFocusNode();
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).colorScheme.secondary),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Theme.of(context).colorScheme.background),
        ),
        child: Row(
          children: [
            const Icon(Icons.search),
            Flexible(
              child: TextField(
                controller: _textController,
                decoration: const InputDecoration.collapsed(
                    hintText: 'Write a search string'),
                focusNode: _focusNode,
                onChanged: (text) =>
                    ref.read(searchProvider.notifier).updateSearchText(text),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: ref.watch(searchProvider).searchText != ''
                  ? () {
                      context.push('/articles/${_textController.text}');
                    }
                  : null,
            ),
            IconButton(
              icon: const Icon(Icons.clear_all),
              onPressed: _textController.text != ''
                  ? () {
                      _textController.clear();
                      ref
                          .read(searchProvider.notifier)
                          .updateSearchText(_textController.text);
                    }
                  : null,
            ),
            const SearchModeMenu(),
          ],
        ),
      ),
    );
  }
}

class SearchModeMenu extends HookConsumerWidget {
  const SearchModeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = useState(SearchModes.start);
    return PopupMenuButton(
      onSelected: (SearchModes value) {
        selected.value = value;
        ref.read(searchProvider.notifier).updateSearchMode(value);
      },
      itemBuilder: (_) => [
        CheckedPopupMenuItem(
          checked: selected.value == SearchModes.start,
          value: SearchModes.start,
          child: const Text('Start'),
        ),
        CheckedPopupMenuItem(
          checked: selected.value == SearchModes.middle,
          value: SearchModes.middle,
          child: const Text('Middle'),
        ),
        CheckedPopupMenuItem(
          checked: selected.value == SearchModes.end,
          value: SearchModes.end,
          child: const Text('End'),
        ),
      ],
    );
  }
}

class Status extends ConsumerWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(filterProvider);
    final availableDicts = [
      {'name': 'termwiki'},
      {'name': 'gtsmenob', 'src': 'sme', 'target': 'nob'},
      {'name': 'gtnobsme', 'src': 'nob', 'target': 'sme'},
      {'name': 'gtnobsma', 'src': 'nob', 'target': 'sma'},
      {'name': 'gtsmanob', 'src': 'sma', 'target': 'nob'},
      {'name': 'gtsmefin', 'src': 'sme', 'target': 'fin'},
      {'name': 'gtfinsme', 'src': 'fin', 'target': 'sme'},
      {'name': 'gtsmesmn', 'src': 'sme', 'target': 'smn'},
      {'name': 'gtsmnsme', 'src': 'smn', 'target': 'sme'},
      {'name': 'gtfinsmn', 'src': 'fin', 'target': 'smn'},
      {'name': 'gtsmnfin', 'src': 'smn', 'target': 'fin'},
      {'name': 'gtfinnob', 'src': 'fin', 'target': 'nob'},
      {'name': 'sammallahtismefin', 'src': 'sme', 'target': 'fin'},
    ];
    final srcLangs = [...filter.wantedSrcLangs];
    final targetLangs = [...filter.wantedTargetLangs];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FilterPage(),
            ),
          ),
          child: Text(
            srcLangs.length < 4
                ? srcLangs.join(',')
                : '${srcLangs.length} langs',
          ),
        ),
        IconButton(
            icon: const Icon(Icons.multiple_stop),
            onPressed: () {
              ref.read(filterProvider.notifier).updateSrcLangs(targetLangs);
              ref.read(filterProvider.notifier).updateTargetLangs(srcLangs);
              final dicts = availableDicts
                  .where((dictData) => (dictData['name'] == 'termwiki' ||
                      (targetLangs.contains(dictData['src']) &&
                          srcLangs.contains(dictData['target']))))
                  .map((dictData) => '${dictData['name']}');
              ref.read(filterProvider.notifier).updateDicts(dicts.toList());
            }),
        // Icon(Icons.repeat),
        // Icon(Icons.swap_horiz),
        ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FilterPage(),
            ),
          ),
          child: Text(
            targetLangs.length < 4
                ? targetLangs.join(',')
                : '${targetLangs.length} langs',
          ),
        ),
      ],
    );
  }
}

class SearchPage extends HookConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sátni.org'),
      ),
      body: Column(
        children: const [
          Status(),
          Searcher(),
          Lemmatised(),
          SearchResults(),
        ],
      ),
    );
  }
}

class Lemmatised extends ConsumerWidget {
  const Lemmatised({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final search = ref.watch(searchProvider);
    if (search.searchText.length < 3) {
      return const Text('No analysis');
    } else {
      return LemmatisedView(search.searchText);
    }
  }
}

class SearchResults extends ConsumerWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final search = ref.watch(searchProvider);
    final filter = ref.watch(filterProvider);
    if (search.searchText.isEmpty) {
      return Text('Init: $search $filter');
    } else {
      final StemState stemState = ref.watch(stemNotifierProvider);

      return stemState.when(
        loading: () => const CircularProgressIndicator(),
        error: (err) => Text('Error: $err'),
        success: (stems) => NewStems(data: stems),
        loadingMore: (stems) => NewStems(data: stems),
      );
    }
  }
}

class NewStems extends ConsumerWidget {
  NewStems({
    required AllLemmas$Query data,
    Key? key,
  })  : _data = data,
        super(key: key);

  final AllLemmas$Query _data;
  final _scrollController = ScrollController();

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final itemCount = _data.stemList!.edges.length;

    if (itemCount == 0) {
      return Container();
    }

    _scrollController.addListener(() {
      var triggerFetchMoreSize =
          0.9 * _scrollController.position.maxScrollExtent;
      if (_data.stemList!.pageInfo.hasNextPage &&
          _scrollController.position.pixels > triggerFetchMoreSize) {
        ref
            .read(stemNotifierProvider.notifier)
            .fetchMoreStems('${_data.stemList!.pageInfo.endCursor}');
      }
    });
    List<String> stems = [];

    for (final edge in _data.stemList!.edges) {
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
            tiles: stems.map(
              (stem) => ListTile(
                title: Text(stem),
                trailing: const Icon(Icons.star_border_rounded),
                onTap: () => context.push('/articles/$stem'),
              ),
            ),
          ).toList(),
        ),
      ),
    );
  }
}
