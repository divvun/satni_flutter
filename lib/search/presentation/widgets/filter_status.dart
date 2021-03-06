// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:satni/filter/index.dart';

class FilterStatus extends ConsumerWidget {
  const FilterStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(filterProvider);
    final availableDicts = [
      {'name': 'gtfinnob', 'src': 'fin', 'target': 'nob'},
      {'name': 'gtfinsme', 'src': 'fin', 'target': 'sme'},
      {'name': 'gtfinsmn', 'src': 'fin', 'target': 'smn'},
      {'name': 'gtnobsma', 'src': 'nob', 'target': 'sma'},
      {'name': 'gtnobsme', 'src': 'nob', 'target': 'sme'},
      {'name': 'gtsmanob', 'src': 'sma', 'target': 'nob'},
      {'name': 'gtsmefin', 'src': 'sme', 'target': 'fin'},
      {'name': 'gtsmenob', 'src': 'sme', 'target': 'nob'},
      {'name': 'gtsmesmn', 'src': 'sme', 'target': 'smn'},
      {'name': 'gtsmnfin', 'src': 'smn', 'target': 'fin'},
      {'name': 'gtsmnsme', 'src': 'smn', 'target': 'sme'},
      {'name': 'sammallahtismefin', 'src': 'sme', 'target': 'fin'},
      {'name': 'termwiki'},
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
