// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:satni_graphql_service/satni_graphql_service.dart';

// Project imports:
import '../../common_providers/satni_service_provider.dart';
import '../domain/generated.dart';
import '../domain/paradigm_templates.dart';

final generatedService =
    FutureProvider.family<Query$Generated?, Arguments>((ref, arguments) async {
  final satniSearchRepository = ref.watch(satniServiceProvider);
  final generated = await satniSearchRepository.getGenerated(
      arguments.origform,
      arguments.language,
      wantedParadigms(arguments.language, arguments.pos, arguments.posDomain));
  return generated;
});
