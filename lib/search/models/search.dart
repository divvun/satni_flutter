// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';

@freezed
class Search with _$Search {
  factory Search({
    @Default('') String searchText,
    @Default('start') String searchMode,
  }) = _Search;
}
