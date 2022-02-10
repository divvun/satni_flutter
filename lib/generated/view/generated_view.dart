import 'package:enough_platform_widgets/enough_platform_widgets.dart';
import 'package:flutter/material.dart';
import 'package:satni_flutter/graphql_api.graphql.dart';
import '../generated.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GeneratedView extends ConsumerWidget {
  const GeneratedView(this.arguments, {Key? key}) : super(key: key);

  final Arguments arguments;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(generatedProvider(arguments)).when(
        loading: () => const CircularProgressIndicator(),
        data: (generated) => ListView(
              children: [..._generated(context, generated)],
            ),
        error: (_, __) => const Text('Oops, generation went awry'));
  }

  List<Widget> _generated(BuildContext context, Generated$Query generated) {
    return generated.generated!
        .map((e) => PlatformListTile(
              title: Text(
                  e?.analyses?.map((e) => e?.wordform).toList().join(", ") ??
                      'no forms'),
              subtitle: Text(e?.paradigmTemplate ?? 'unknown'),
            ))
        .toList();
  }
}
