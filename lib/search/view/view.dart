import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../pod/search.dart';

class SearchPage extends ConsumerWidget {
  SearchPage({Key? key}) : super(key: key);

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sátni.org'),
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
                return Text('$search');
              }),
            ),
          )
        ],
      ),
    );
  }
}
