import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../pod/filter.dart';

class FilterPage extends ConsumerWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filtering')),
      body: ListView(
        children: [
          _displaySrcLangs(context, ref),
          _displayTargetLangs(context, ref),
          _displayDicts(context, ref),
        ],
        shrinkWrap: true,
      ),
    );
  }

  Widget _displaySrcLangs(
    BuildContext context,
    WidgetRef ref,
  ) {
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
    final filter = ref.watch(filterProvider);
    final srcLangs = [...filter.wantedSrcLangs];

    return Column(
      children: availableLangs
          .map(
            (srcLang) => CheckboxListTile(
              title: Text(srcLang),
              value: srcLangs.contains(srcLang),
              onChanged: (newValue) {
                newValue! ? srcLangs.add(srcLang) : srcLangs.remove(srcLang);
                ref.read(filterProvider.notifier).updateSrcLangs(srcLangs);
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
          )
          .toList(),
      // shrinkWrap: true,
    );
  }

  Widget _displayTargetLangs(
    BuildContext context,
    WidgetRef ref,
  ) {
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
    final filter = ref.watch(filterProvider);
    final targetLangs = [...filter.wantedTargetLangs];

    return Column(
      children: availableLangs
          .map(
            (targetLang) => CheckboxListTile(
              title: Text(targetLang),
              value: targetLangs.contains(targetLang),
              onChanged: (newValue) {
                newValue!
                    ? targetLangs.add(targetLang)
                    : targetLangs.remove(targetLang);
                ref
                    .read(filterProvider.notifier)
                    .updateTargetLangs(targetLangs);
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
          )
          .toList(),
      // shrinkWrap: true,
    );
  }

  Widget _displayDicts(
    BuildContext context,
    WidgetRef ref,
  ) {
    final availableDicts = [
      'termwiki',
      'gtsmenob',
      'gtnobsme',
      'gtnobsma',
      'gtsmanob',
      'gtsmefin',
      'gtfinsme',
      'gtsmesmn',
      'gtsmnsme',
      'gtfinsmn',
      'gtsmnfin',
      'gtfinnob',
      'sammallahtismefin',
    ];
    final filter = ref.watch(filterProvider);
    final dicts = [...filter.wantedDicts];

    return Column(
      children: availableDicts
          .map(
            (dict) => CheckboxListTile(
              title: Text(dict),
              value: dicts.contains(dict),
              onChanged: (newValue) {
                newValue! ? dicts.add(dict) : dicts.remove(dict);
                ref.read(filterProvider.notifier).updateDicts(dicts);
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
          )
          .toList(),
      // shrinkWrap: true,
    );
  }
}
