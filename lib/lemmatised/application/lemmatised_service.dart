// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:satni/graphql_api.dart';
import 'package:satni/lemmatised/index.dart';

final lemmatisedService =
    FutureProvider.family<Lemmatised$Query, String>((ref, lookupString) async {
  final lemmatisedRepo = ref.watch(lemmatisedRepositoryProvider);
  final lemmatised = await lemmatisedRepo.getLemmatised(lookupString);
  return lemmatised;
});
