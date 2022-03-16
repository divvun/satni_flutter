// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';

enum SearchModes {
  start,
  middle,
  end,
}

@freezed
class Search with _$Search {
  factory Search({
    @Default('') String searchText,
    @Default(SearchModes.start) SearchModes searchMode,
  }) = _Search;
}
