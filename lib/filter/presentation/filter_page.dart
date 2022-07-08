// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:satni/filter/index.dart';

class FilterPage extends ConsumerWidget {
  FilterPage({Key? key}) : super(key: key);

  Iterable<Widget> _searchLangs(
    BuildContext context,
    WidgetRef ref,
  ) {
    final f = ref.watch(filterRepositoryProvider);
    final availableLangs = f.getAvailableLangs();
    final availableDicts = f.getAvailableDicts();

    final filter = ref.watch(filterProvider);
    final List<String> srcLangs = [...filter.wantedSrcLangs];
    return availableLangs.map(
      (srcLang) => CheckboxListTile(
        title: Text(srcLang),
        value: srcLangs.contains(srcLang),
        onChanged: (newValue) {
          newValue! ? srcLangs.add(srcLang) : srcLangs.remove(srcLang);
          ref.read(filterProvider.notifier).updateSrcLangs(srcLangs);
          final dicts = availableDicts
              .where((dictData) => (dictData['name'] == 'termwiki' ||
                  (srcLangs.contains(dictData['src']) &&
                      filter.wantedTargetLangs.contains(dictData['target']))))
              .map((dictData) => '${dictData['name']}');
          ref.read(filterProvider.notifier).updateDicts(dicts.toList());
        },
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }

  Widget _displaySrcLangs(
    BuildContext context,
    WidgetRef ref,
  ) {
    return Column(
      children: [
        const Text('Search languages'),
        ..._searchLangs(context, ref),
      ],
    );
  }

  Iterable<Widget> _targetLangs(
    BuildContext context,
    WidgetRef ref,
  ) {
    final f = ref.watch(filterRepositoryProvider);
    final availableLangs = f.getAvailableLangs();
    final availableDicts = f.getAvailableDicts();

    final filter = ref.watch(filterProvider);
    final List<String> targetLangs = [...filter.wantedTargetLangs];

    return availableLangs.map(
      (targetLang) => CheckboxListTile(
        title: Text(targetLang),
        value: targetLangs.contains(targetLang),
        onChanged: (newValue) {
          newValue!
              ? targetLangs.add(targetLang)
              : targetLangs.remove(targetLang);
          ref.read(filterProvider.notifier).updateTargetLangs(targetLangs);
          final dicts = availableDicts
              .where((dictData) => (dictData['name'] == 'termwiki' ||
                  (filter.wantedSrcLangs.contains(dictData['src']) &&
                      targetLangs.contains(dictData['target']))))
              .map((dictData) => '${dictData['name']}');
          ref.read(filterProvider.notifier).updateDicts(dicts.toList());
        },
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }

  Widget _displayTargetLangs(
    BuildContext context,
    WidgetRef ref,
  ) {
    return Column(
      children: [
        const Text('Result languages'),
        ..._targetLangs(context, ref),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filtering')),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(flex: 6, child: _displaySrcLangs(context, ref)),
              Expanded(flex: 6, child: _displayTargetLangs(context, ref)),
            ],
          ),
          const ChooseDicts(),
        ],
      ),
    );
  }
}
