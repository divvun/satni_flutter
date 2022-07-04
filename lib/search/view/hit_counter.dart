// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:satni/search/search.dart';

class HitCounter extends ConsumerWidget {
  const HitCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stemState = ref.watch(stemNotifierProvider);

    return stemState.when(
      error: (error) => Container(),
      initial: () => Container(),
      loading: () => Container(),
      loadingMore: (data) => SearchStatus(data),
      success: (data) => SearchStatus(data),
    );
  }
}
