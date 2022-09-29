// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:satni_graphql_service/satni_graphql_service.dart';

// Project imports:

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.error(String message) = _Error;
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.loadingMore(Query$AllLemmas stems) = _LoadingMore;
  const factory SearchState.success(Query$AllLemmas stems) = _Success;
}
