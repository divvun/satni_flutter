// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../application/filter_notifier.dart';
import '../data/filter_repository.dart';

class ChooseDicts extends ConsumerWidget {
  const ChooseDicts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final f = ref.watch(filterRepositoryProvider);
    final availableDicts = f.getAvailableDicts();

    final filter = ref.watch(filterProvider);
    final List<String> dicts = [...filter.wantedDicts];

    return Column(children: [
      const Text('Available dictionaries'),
      ...availableDicts
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
          ),
    ]);
  }
}
