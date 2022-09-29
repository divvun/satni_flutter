// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import '../../graphql/queries/generated.graphql.dart';
import '../data/generated_repository.dart';
import '../domain/generated.dart';

final generatedService =
    FutureProvider.family<Query$Generated?, Arguments>((ref, arguments) async {
  final generatedRepo = ref.watch(generatedRepositoryProvider);
  final generated = await generatedRepo.getGenerated(
      arguments.origform, arguments.language, arguments.wantedParadigms);
  return generated;
});
