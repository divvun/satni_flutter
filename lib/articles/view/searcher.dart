// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:satni/search/search.dart';
import 'articles.dart';

class Searcher extends HookConsumerWidget {
  const Searcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController();
    final focusNode = useFocusNode();
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
                controller: textController,
                decoration: const InputDecoration.collapsed(
                    hintText: 'Write a search string'),
                focusNode: focusNode,
                onChanged: (text) =>
                    ref.read(searchProvider.notifier).updateSearchText(text),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: ref.watch(searchProvider).searchText != ''
                  ? () {
                      context.push('/articles/${textController.text}');
                    }
                  : null,
            ),
            IconButton(
              icon: const Icon(Icons.clear_all),
              onPressed: textController.text != ''
                  ? () {
                      textController.clear();
                      ref
                          .read(searchProvider.notifier)
                          .updateSearchText(textController.text);
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
