// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:satni/graphql_api.graphql.dart';

part 'stem_state.freezed.dart';

@freezed
class StemState with _$StemState {
  const factory StemState.error(String message) = _Error;

  const factory StemState.loading() = _Loading;

  const factory StemState.loadingMore(AllLemmas$Query stems) = _LoadingMore;

  const factory StemState.success(AllLemmas$Query stems) = _Success;
}
