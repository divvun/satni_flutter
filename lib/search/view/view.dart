import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:satni_flutter/filter/filter.dart';
import 'package:satni_flutter/filter/pod/filter.dart';

import '../pod/search.dart';

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
                return Text('$search $filter');
              }),
            ),
          )
        ],
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
