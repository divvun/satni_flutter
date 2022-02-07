import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';

@freezed
class Search with _$Search {
  factory Search({
    @Default('') String searchText,
    @Default('start') String searchMode,
  }) = _Search;
}
