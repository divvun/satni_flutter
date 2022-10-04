// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:satni_graphql_service/satni_graphql_service.dart';

// Project imports:
import '../../common_providers/satni_service_provider.dart';

final lemmatisedService =
    FutureProvider.family<LemmatisedResults, String>((ref, lookupString) async {
  final satniSearchRepository = ref.watch(satniServiceProvider);
  final lemmatised = await satniSearchRepository.getLemmatised(lookupString);
  return lemmatised;
});
