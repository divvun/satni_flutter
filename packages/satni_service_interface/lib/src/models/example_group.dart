// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_group.freezed.dart';
part 'example_group.g.dart';

@freezed
class ExampleGroup with _$ExampleGroup {
  const factory ExampleGroup({
    required String example,
    required String translation,
  }) = _ExampleGroup;

  factory ExampleGroup.fromJson(Map<String, dynamic> json) =>
      _$ExampleGroupFromJson(json);
}
