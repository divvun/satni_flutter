// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../application/search_service.dart';
import 'search_status.dart';

class HitCounter extends ConsumerWidget {
  const HitCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchState = ref.watch(searchControllerProvider);

    return searchState.when(
        loading: () => Container(),
        data: (data) => SearchStatus(data),
        error: ((error, _) => Container()));
  }
}
