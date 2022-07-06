// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:satni/generated/index.dart';
import 'package:satni/graphql_api.dart';

final generatedService =
    FutureProvider.family<Generated$Query, Arguments>((ref, arguments) async {
  final generatedRepo = ref.watch(generatedRepositoryProvider);
  final generated = await generatedRepo.getGenerated(
      arguments.origform, arguments.language, arguments.wantedParadigms);
  return generated;
});
