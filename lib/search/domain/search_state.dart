// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:satni/graphql/index.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.error(String message) = _Error;

  const factory SearchState.initial() = _Initial;

  const factory SearchState.loading() = _Loading;

  const factory SearchState.loadingMore(AllLemmas$Query stems) = _LoadingMore;

  const factory SearchState.success(AllLemmas$Query stems) = _Success;
}
