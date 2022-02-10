import 'package:flutter/material.dart';
// import 'package:flutter/semantics.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:satni_flutter/filter/filter.dart';
import 'package:satni_flutter/articles/articles.dart';
import 'package:satni_flutter/lemmatised/lemmatised.dart';
import 'package:satni_flutter/graphql_api.dart';
import 'package:enough_platform_widgets/enough_platform_widgets.dart';

import '../pod/search.dart';

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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Icon(PlatformIcons(context).search),
            ),
            Flexible(
              child: PlatformTextField(
                controller: _textController,
                // decoration: const InputDecoration.collapsed(
                //     hintText: 'Write a search string'),
                focusNode: _focusNode,
                onChanged: (text) =>
                    ref.read(searchProvider.notifier).updateSearchText(text),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: const Icon(Icons.close),
            )
          ],
        ),
      ),
    );
  }
}

class SearchPage extends HookConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const Text('sátni.org'),
        // actions: const [FilterButton()],
      ),
      body: Column(
        children: const [
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
      final AsyncValue<AllLemmas$Query> results = ref.watch(stemProvider);

      return results.when(
        loading: () => PlatformCircularProgressIndicator(),
        error: (err, stack) => Text('Error: $err'),
        data: (stems) => NewStems(data: stems),
      );
    }
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
              (stem) => PlatformListTile(
                title: Text(stem),
                trailing: const Icon(Icons.star_border_rounded),
                onTap: () => Navigator.push(
                  context,
                  platformPageRoute(
                    context: context,
                    builder: (context) => ArticlesPage(stem, Key(stem)),
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
    return PlatformIconButton(
      icon: const Icon(Icons.checklist_rounded),
      onPressed: () => Navigator.push(
          context,
          platformPageRoute(
            context: context,
            builder: (context) => const FilterPage(),
          )),
    );
  }
}
