// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:satni/search/index.dart';

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
