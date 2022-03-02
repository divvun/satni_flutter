// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:satni/api.dart';
import 'package:satni/graphql_api.dart';
import '../generated.dart';

final generatedProvider =
    FutureProvider.family<Generated$Query, Arguments>((ref, arguments) async {
  final generated = await getGenerated(
      arguments.origform, arguments.language, arguments.paradigmTemplates);
  return generated;
});
