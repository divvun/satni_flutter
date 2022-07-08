// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:satni/src/graphql/index.dart';
import 'package:satni/src/lemmatised/index.dart';

final lemmatisedService =
    FutureProvider.family<Lemmatised$Query, String>((ref, lookupString) async {
  final lemmatisedRepo = ref.watch(lemmatisedRepositoryProvider);
  final lemmatised = await lemmatisedRepo.getLemmatised(lookupString);
  return lemmatised;
});
