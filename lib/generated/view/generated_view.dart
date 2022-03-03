// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
                ListTile(title: Text(g2m(generated).toString())),
                ..._generated(context, generated)
              ],
            ),
        error: (_, __) => const Text('Oops, generation went awry'));
  }

  List<Widget> _generated(BuildContext context, Generated$Query generated) {
    final m = g2m(generated);
    return [
      ...['Nom', 'Acc', 'Gen', 'Ill', 'Loc', 'Com'].map(
        (nounCase) => Row(
          children: [
            Expanded(child: Text(nounCase)),
            Expanded(child: Text(m['+N+Sg+$nounCase'] ?? '')),
            Expanded(child: Text(m['+N+Pl+$nounCase'] ?? ''))
          ],
        ),
      ),
      Row(children: [
        const Expanded(child: Text('Ess')),
        Expanded(child: Text(m['+N+Ess'] ?? ''))
      ])
    ];
  }

  List<Widget> _smeNounDefaultGenerated(Map<String, String> m) {
    return [
      ...['Nom', 'Acc', 'Gen', 'Ill', 'Loc', 'Com'].map(
        (nounCase) => Row(
          children: [
            Expanded(child: Text(nounCase)),
            Expanded(child: Text(m['+N+Sg+$nounCase'] ?? '')),
            Expanded(child: Text(m['+N+Pl+$nounCase'] ?? ''))
          ],
        ),
      ),
      Row(children: [
        const Expanded(child: Text('Ess')),
        Expanded(child: Text(m['+N+Ess'] ?? ''))
      ])
    ];
  }

  List<Widget> _smeAdjectiveDefaultGenerated(Map<String, String> m) {
    return [
      Row(
        children: [
          const Expanded(child: Text('Attr')),
          Expanded(child: Text(m['+A+Attr'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('Sg, Nom')),
          Expanded(child: Text(m['+A+Sg+Nom'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('Pl, Nom')),
          Expanded(child: Text(m['+A+Pl+Nom'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('Attr, Comp')),
          Expanded(child: Text(m['+Der/Comp+A+Attr'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('Sg, Nom, Comp')),
          Expanded(child: Text(m['+Der/Comp+A+Sg+Nom'] ?? '')),
        ],
      ),
      Row(children: [
        const Expanded(child: Text('Pl, Nom, Comp')),
        Expanded(child: Text(m['+Der/Comp+A+Pl+Nom'] ?? '')),
      ])
    ];
  }

  List<Widget> _smeAdverbDefaultGenerated(Map<String, String> m) {
    return [
      Row(
        children: [
          const Expanded(child: Text('Adv')),
          Expanded(child: Text(m['+A+Der/AAdv+Adv'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('Comp')),
          Expanded(child: Text(m['+A+Der/Comp+A+Der/AAdv+Adv'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('Superl')),
          Expanded(child: Text(m['+A+Der/Superl+A+Der/AAdv+Adv'] ?? '')),
        ],
      ),
    ];
  }

  List<Widget> _smeVerbDefaultGenerated(Map<String, String> m) {
    return [
      Row(
        children: [
          const Expanded(child: Text('mun')),
          Expanded(child: Text(m['V+Ind+Prs+Sg1'] ?? '')),
          Expanded(child: Text(m['V+Ind+Prt+Sg1'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('don')),
          Expanded(child: Text(m['V+Ind+Prs+Sg2'] ?? '')),
          Expanded(child: Text(m['V+Ind+Prt+Sg2'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('son')),
          Expanded(child: Text(m['V+Ind+Prs+Sg3'] ?? '')),
          Expanded(child: Text(m['V+Ind+Prt+Sg3'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('moai')),
          Expanded(child: Text(m['V+Ind+Prs+Du1'] ?? '')),
          Expanded(child: Text(m['V+Ind+Prt+Du1'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('doai')),
          Expanded(child: Text(m['V+Ind+Prs+Du2'] ?? '')),
          Expanded(child: Text(m['V+Ind+Prt+Du2'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('soai')),
          Expanded(child: Text(m['V+Ind+Prs+Du3'] ?? '')),
          Expanded(child: Text(m['V+Ind+Prt+Du3'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('mii')),
          Expanded(child: Text(m['V+Ind+Prs+Pl1'] ?? '')),
          Expanded(child: Text(m['V+Ind+Prt+Pl1'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('dii')),
          Expanded(child: Text(m['V+Ind+Prs+Pl2'] ?? '')),
          Expanded(child: Text(m['V+Ind+Prt+Pl2'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('dii')),
          Expanded(child: Text(m['V+Ind+Prs+Pl3'] ?? '')),
          Expanded(child: Text(m['V+Ind+Prt+Pl3'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('odne in')),
          Expanded(child: Text(m['V+Ind+Prs+ConNeg'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('ikte in')),
          Expanded(child: Text(m['V+Ind+Prt+ConNeg'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('lean')),
          Expanded(child: Text(m['+V+PrfPrc'] ?? '')),
        ],
      ),
    ];
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
