// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:satni/filter/index.dart';
import 'package:satni/routing/index.dart';

// Project imports:

enum UIFilter {
  satniorg,
  satniSmiNonsmi,
  smenob,
  smefin,
  smesmn,
  smanob,
  finnob,
  custom
}

class UIFilterMenu extends HookConsumerWidget {
  const UIFilterMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = useState(UIFilter.satniorg);
    return PopupMenuButton(
      onSelected: (UIFilter value) {
        selected.value = value;
        if (value == UIFilter.custom) {
          context.pushNamed(DivvunRoutes.filtering.name);
        } else {
          ref.read(filterProvider.notifier).updateLangGroup(
                value.name,
                ref.read(filterRepositoryProvider).getAvailableDicts(),
              );
        }
      },
      itemBuilder: (_) => UIFilter.values
          .map((uiFilterValue) => CheckedPopupMenuItem(
              checked: selected.value == uiFilterValue,
              value: uiFilterValue,
              child: Text(uiFilterValue.name)))
          .toList(),
    );
  }
}
