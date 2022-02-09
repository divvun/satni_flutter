import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:satni_flutter/api.dart';
import 'package:satni_flutter/graphql_api.dart';
import '../generated.dart';

final generatedProvider =
    FutureProvider.family<Generated$Query, Arguments>((ref, arguments) async {
  final generated = await getGenerated(
      arguments.origform, arguments.language, arguments.partOfSpeech);
  return generated;
});
