// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import '../pod/filter.dart';

class FilterPage extends ConsumerWidget {
  FilterPage({Key? key}) : super(key: key);
  final availableLangs = [
    'eng',
    'fin',
    'lat',
    'nno',
    'nob',
    'sma',
    'sme',
    'smn',
    'sms',
    'swe',
  ];
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
          _displayDicts(context, ref),
        ],
      ),
    );
  }

  Iterable<Widget> _searchLangs(
    BuildContext context,
    WidgetRef ref,
  ) {
    final filter = ref.watch(filterProvider);
    final srcLangs = [...filter.wantedSrcLangs];
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
    final filter = ref.watch(filterProvider);
    final targetLangs = [...filter.wantedTargetLangs];

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

  Iterable<Widget> _wantedDicts(
    BuildContext context,
    WidgetRef ref,
  ) {
    final filter = ref.watch(filterProvider);
    final dicts = [...filter.wantedDicts];
    return availableDicts
        .where((dictData) => (dictData['name'] == 'termwiki' ||
            (filter.wantedSrcLangs.contains(dictData['src']) &&
                filter.wantedTargetLangs.contains(dictData['target']))))
        .map(
          (dictData) => CheckboxListTile(
            title: Text(dictData['name'] ?? 'termwiki'),
            value: dicts.contains(dictData['name']),
            onChanged: (newValue) {
              newValue!
                  ? dicts.add(dictData['name'] ?? 'termwiki')
                  : dicts.remove(dictData['name']);
              ref.read(filterProvider.notifier).updateDicts(dicts);
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
        );
  }

  Widget _displayDicts(
    BuildContext context,
    WidgetRef ref,
  ) {
    return Column(children: [
      const Text('Available dictionaries'),
      ..._wantedDicts(context, ref),
    ]);
  }
}
