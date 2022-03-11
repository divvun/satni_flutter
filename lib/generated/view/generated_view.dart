// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:satni/generated/models/paradigm_templates.dart';

// Project imports:
import 'package:satni/graphql_api.graphql.dart';
import '../generated.dart';

class GeneratedView extends ConsumerWidget {
  const GeneratedView(this.arguments, {Key? key}) : super(key: key);

  final Arguments arguments;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(generatedProvider(arguments)).when(
        loading: () => const CircularProgressIndicator(),
        data: (generated) => ListView(
              children: [
                // ListTile(title: Text(g2m(generated).toString())),
                ..._generated(context, arguments, generated)
              ],
            ),
        error: (_, __) => const Text('Oops, generation went awry'));
  }

  List<Widget> _generated(
      BuildContext context, Arguments arguments, Generated$Query generated) {
    final m = g2m(generated);
    if (paradigmTemplates.keys.contains(arguments.language)) {
      return _smiNounDefaultGenerated(m, arguments);
    }

    return [];
  }

  List<Widget> _smiNounDefaultGenerated(
      Map<String, String> m, Arguments arguments) {
    return [
      Row(children: [
        ...paradigmTemplates[arguments.language][arguments.pos]
                [arguments.posDomain]['header']
            .map((element) => Expanded(child: Text(element ?? '')))
      ]),
      ...paradigmTemplates[arguments.language][arguments.pos]
              [arguments.posDomain]['rows']
          .map(
        (row) => GeneratedRow(row, m),
      ),
    ];
  }
}

class GeneratedRow extends StatelessWidget {
  const GeneratedRow(this.row, this.m, {Key? key}) : super(key: key);

  final Map<String, dynamic> row;
  final Map<String, String> m;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(row['name'])),
        ...row['paradigms']
            .map((paradigm) => Expanded(child: Text(m[paradigm] ?? ''))),
      ],
    );
  }
}

Map<String, String> g2m(Generated$Query g) {
  var m = <String, String>{};

  for (final g2 in g.generated!) {
    final pt = g2!.paradigmTemplate;
    final n = g2.analyses!.map((analysis) => analysis!.wordform).join(', ');
    pt != null ? m[pt] = n : null;
  }
  return m;
}
