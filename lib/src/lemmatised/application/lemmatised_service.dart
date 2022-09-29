// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import '../../graphql/queries/lemmatised.graphql.dart';
import '../data/lemmatised_repository.dart';

final lemmatisedService =
    FutureProvider.family<Query$Lemmatised?, String>((ref, lookupString) async {
  final lemmatisedRepo = ref.watch(lemmatisedRepositoryProvider);
  final lemmatised = await lemmatisedRepo.getLemmatised(lookupString);
  return lemmatised;
});
