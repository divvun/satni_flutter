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
      if (arguments.language == 'sme') {
        if (arguments.pos == 'N') {
          return _smiNounDefaultGenerated(m, arguments);
        }
        if (arguments.pos == 'V') {
          return _smeVerbDefaultGenerated(m);
        }
        if (arguments.pos == 'A') {
          return _smeAdjectiveDefaultGenerated(m);
        }
        if (arguments.pos == 'Adv') {
          return _smeAdverbDefaultGenerated(m);
        }
        return [];
      }
      if (arguments.language == 'sma') {
        if (arguments.pos == 'N') {
          return _smaNounDefaultGenerated(m);
        }
        if (arguments.pos == 'V') {
          return _smaVerbDefaultGenerated(m);
        }
        if (arguments.pos == 'A') {
          return _smaAdjectiveDefaultGenerated(m);
        }
        return [];
      }
    }

    return [];
  }

  List<Widget> _smiNounDefaultGenerated(
      Map<String, String> m, Arguments arguments) {
    // print(
    //     '${paradigmTemplates[arguments.language][arguments.pos][arguments.posDomain]["header"]}');
    return [
      // Row(children: [
      //   ...paradigmTemplates[arguments.language][arguments.pos]
      //           [arguments.posDomain]['header']
      //       .map((element) => Expanded(child: Text(element ?? '')))
      // ]),
      ...paradigmTemplates[arguments.language][arguments.pos]
              [arguments.posDomain]
          .map(
        (row) => Row(
          children: [
            Expanded(child: Text(row['name'])),
            ...row['paradigms']
                .map((paradigm) => Expanded(child: Text(m[paradigm] ?? ''))),
          ],
        ),
      ),
    ];
  }

  List<Widget> _smaNounDefaultGenerated(Map<String, String> m) {
    return [
      ...['Nom', 'Acc', 'Gen', 'Ill', 'Ine', 'Ela', 'Com'].map(
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
          Expanded(child: Text(m['+A+Der/Comp+A+Attr'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('Sg, Nom, Comp')),
          Expanded(child: Text(m['+A+Der/Comp+A+Sg+Nom'] ?? '')),
        ],
      ),
      Row(children: [
        const Expanded(child: Text('Pl, Nom, Comp')),
        Expanded(child: Text(m['+A+Der/Superl+A+Sg+Nom'] ?? '')),
      ])
    ];
  }

  List<Widget> _smaAdjectiveDefaultGenerated(Map<String, String> m) {
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
          const Expanded(child: Text('Attr, Comp')),
          Expanded(child: Text(m['+A+Der/Comp+A+Attr'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('Sg, Nom, Comp')),
          Expanded(child: Text(m['+A+Der/Comp+A+Sg+Nom'] ?? '')),
        ],
      ),
      Row(children: [
        const Expanded(child: Text('Pl, Nom, Comp')),
        Expanded(child: Text(m['+A+Der/Superl+A+Sg+Nom'] ?? '')),
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
          Expanded(child: Text(m['+V+Ind+Prs+Sg1'] ?? '')),
          Expanded(child: Text(m['+V+Ind+Prt+Sg1'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('don')),
          Expanded(child: Text(m['+V+Ind+Prs+Sg2'] ?? '')),
          Expanded(child: Text(m['+V+Ind+Prt+Sg2'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('son')),
          Expanded(child: Text(m['+V+Ind+Prs+Sg3'] ?? '')),
          Expanded(child: Text(m['+V+Ind+Prt+Sg3'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('moai')),
          Expanded(child: Text(m['+V+Ind+Prs+Du1'] ?? '')),
          Expanded(child: Text(m['+V+Ind+Prt+Du1'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('doai')),
          Expanded(child: Text(m['+V+Ind+Prs+Du2'] ?? '')),
          Expanded(child: Text(m['+V+Ind+Prt+Du2'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('soai')),
          Expanded(child: Text(m['+V+Ind+Prs+Du3'] ?? '')),
          Expanded(child: Text(m['+V+Ind+Prt+Du3'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('mii')),
          Expanded(child: Text(m['+V+Ind+Prs+Pl1'] ?? '')),
          Expanded(child: Text(m['+V+Ind+Prt+Pl1'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('dii')),
          Expanded(child: Text(m['+V+Ind+Prs+Pl2'] ?? '')),
          Expanded(child: Text(m['+V+Ind+Prt+Pl2'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('dii')),
          Expanded(child: Text(m['+V+Ind+Prs+Pl3'] ?? '')),
          Expanded(child: Text(m['+V+Ind+Prt+Pl3'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('odne in')),
          Expanded(child: Text(m['+V+Ind+Prs+ConNeg'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('ikte in')),
          Expanded(child: Text(m['+V+Ind+Prt+ConNeg'] ?? '')),
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

  List<Widget> _smaVerbDefaultGenerated(Map<String, String> m) {
    return [
      Row(
        children: [
          const Expanded(child: Text('manne')),
          Expanded(child: Text(m['+V+Ind+Prs+Sg1'] ?? '')),
          Expanded(child: Text(m['+V+Ind+Prt+Sg1'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('datne')),
          Expanded(child: Text(m['+V+Ind+Prs+Sg2'] ?? '')),
          Expanded(child: Text(m['+V+Ind+Prt+Sg2'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('dïhte')),
          Expanded(child: Text(m['+V+Ind+Prs+Sg3'] ?? '')),
          Expanded(child: Text(m['+V+Ind+Prt+Sg3'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('månnoeh')),
          Expanded(child: Text(m['+V+Ind+Prs+Du1'] ?? '')),
          Expanded(child: Text(m['+V+Ind+Prt+Du1'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('dåtnoeh')),
          Expanded(child: Text(m['+V+Ind+Prs+Du2'] ?? '')),
          Expanded(child: Text(m['+V+Ind+Prt+Du2'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('dah guaktah')),
          Expanded(child: Text(m['+V+Ind+Prs+Du3'] ?? '')),
          Expanded(child: Text(m['+V+Ind+Prt+Du3'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('mijjieh')),
          Expanded(child: Text(m['+V+Ind+Prs+Pl1'] ?? '')),
          Expanded(child: Text(m['+V+Ind+Prt+Pl1'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('dijjieh')),
          Expanded(child: Text(m['+V+Ind+Prs+Pl2'] ?? '')),
          Expanded(child: Text(m['+V+Ind+Prt+Pl2'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('dah')),
          Expanded(child: Text(m['+V+Ind+Prs+Pl3'] ?? '')),
          Expanded(child: Text(m['+V+Ind+Prt+Pl3'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('ij')),
          Expanded(child: Text(m['+V+ConNeg'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('lea')),
          Expanded(child: Text(m['+V+PrfPrc'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('lea')),
          Expanded(child: Text(m['+V+Ger'] ?? '')),
        ],
      ),
      Row(
        children: [
          const Expanded(child: Text('')),
          Expanded(child: Text(m['+V+VGen'] ?? '')),
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
