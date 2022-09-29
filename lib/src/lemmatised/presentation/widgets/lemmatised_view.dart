// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:satni_graphql_service/satni_graphql_service.dart';

// Project imports:
import '../../application/lemmatised_service.dart';

class LemmatisedView extends ConsumerWidget {
  const LemmatisedView(this.lookupString, {Key? key}) : super(key: key);

  final String lookupString;

  List<Widget> _lemmatised(BuildContext context, Query$Lemmatised lemmatised) {
    return lemmatised.lemmatised!
        .where((element) => element!.wordforms.isNotEmpty)
        .map((languageResult) => Column(
              children: [
                Text(languageResult!.language),
                Text(languageResult.wordforms.join(", ")),
                Text(languageResult.analyses
                    .map((aResult) => aResult!.analysis)
                    .toList()
                    .join('\n')),
              ],
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(lemmatisedService(lookupString)).when(
        loading: () => const CircularProgressIndicator(),
        data: (lemmatised) => Column(
              children: [..._lemmatised(context, lemmatised!)],
            ),
        error: (_, __) => const Text('Oops, generation went awry'));
  }
}
