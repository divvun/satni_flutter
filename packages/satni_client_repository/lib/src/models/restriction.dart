import 'package:freezed_annotation/freezed_annotation.dart';

import 'spurious_attribute.dart';

part 'restriction.freezed.dart';
part 'restriction.g.dart';

@freezed
class Restriction with _$Restriction {
  const factory Restriction({
    required String restriction,
    @Default([]) List<SpuriousAttribute> attributes,
  }) = _Restriction;

  factory Restriction.fromJson(Map<String, dynamic> json) =>
      _$RestrictionFromJson(json);
}
