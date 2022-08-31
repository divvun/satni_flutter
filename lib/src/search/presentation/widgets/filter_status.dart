// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../../filter/application/filter_notifier.dart';
import '../../../filter/data/filter_repository.dart';
import 'ui_filter_menu.dart';

class FilterStatus extends ConsumerWidget {
  const FilterStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final f = ref.watch(filterRepositoryProvider);
    final availableDicts = f.getAvailableDicts();

    final filter = ref.watch(filterProvider);
    final srcLangs = filter.wantedSrcLangs;
    final targetLangs = filter.wantedTargetLangs;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const UIFilterMenu(),
        Text(
          srcLangs.length < 4 ? srcLangs.join(',') : '${srcLangs.length} langs',
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
        Text(
          targetLangs.length < 4
              ? targetLangs.join(',')
              : '${targetLangs.length} langs',
        ),
      ],
    );
  }
}
