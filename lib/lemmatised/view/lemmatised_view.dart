import 'package:flutter/material.dart';
import 'package:satni/graphql_api.graphql.dart';
import '../lemmatised.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LemmatisedView extends ConsumerWidget {
  const LemmatisedView(this.lookupString, {Key? key}) : super(key: key);

  final String lookupString;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(lemmatisedProvider(lookupString)).when(
        loading: () => const CircularProgressIndicator(),
        data: (lemmatised) => Column(
              children: [..._lemmatised(context, lemmatised)],
            ),
        error: (_, __) => const Text('Oops, generation went awry'));
  }

  List<Widget> _lemmatised(BuildContext context, Lemmatised$Query lemmatised) {
    return lemmatised.lemmatised!
        .where((element) => element!.wordforms!.isNotEmpty)
        .map((languageResult) => Column(
              children: [
                Text('${languageResult!.language}'),
                Text(languageResult.wordforms!.join(", ")),
                Text(languageResult.analyses!
                    .map((aResult) => '${aResult!.analysis}')
                    .toList()
                    .join('\n')),
              ],
            ))
        .toList();
  }
}