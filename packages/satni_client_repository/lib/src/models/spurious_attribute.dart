import 'package:freezed_annotation/freezed_annotation.dart';
part 'spurious_attribute.freezed.dart';
part 'spurious_attribute.g.dart';

@freezed
class SpuriousAttribute with _$SpuriousAttribute {
  const factory SpuriousAttribute({
    required String name,
    required String value,
  }) = _SpuriousAttributes;

  factory SpuriousAttribute.fromJson(Map<String, dynamic> json) =>
      _$SpuriousAttributeFromJson(json);
}
