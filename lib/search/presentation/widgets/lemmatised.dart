// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:satni/lemmatised/index.dart';
import 'package:satni/search/index.dart';

class Lemmatised extends ConsumerWidget {
  const Lemmatised({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final search = ref.watch(searchProvider);
    if (search.searchText.length < 3) {
      return const Text('No analysis');
    } else {
      return LemmatisedView(search.searchText);
    }
  }
}
