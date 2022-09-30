// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'spurious_attribute.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpuriousAttribute _$SpuriousAttributeFromJson(Map<String, dynamic> json) {
  return _SpuriousAttributes.fromJson(json);
}

/// @nodoc
mixin _$SpuriousAttribute {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpuriousAttributeCopyWith<SpuriousAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpuriousAttributeCopyWith<$Res> {
  factory $SpuriousAttributeCopyWith(
          SpuriousAttribute value, $Res Function(SpuriousAttribute) then) =
      _$SpuriousAttributeCopyWithImpl<$Res>;
  $Res call({String name, String value});
}

/// @nodoc
class _$SpuriousAttributeCopyWithImpl<$Res>
    implements $SpuriousAttributeCopyWith<$Res> {
  _$SpuriousAttributeCopyWithImpl(this._value, this._then);

  final SpuriousAttribute _value;
  // ignore: unused_field
  final $Res Function(SpuriousAttribute) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SpuriousAttributesCopyWith<$Res>
    implements $SpuriousAttributeCopyWith<$Res> {
  factory _$$_SpuriousAttributesCopyWith(_$_SpuriousAttributes value,
          $Res Function(_$_SpuriousAttributes) then) =
      __$$_SpuriousAttributesCopyWithImpl<$Res>;
  @override
  $Res call({String name, String value});
}

/// @nodoc
class __$$_SpuriousAttributesCopyWithImpl<$Res>
    extends _$SpuriousAttributeCopyWithImpl<$Res>
    implements _$$_SpuriousAttributesCopyWith<$Res> {
  __$$_SpuriousAttributesCopyWithImpl(
      _$_SpuriousAttributes _value, $Res Function(_$_SpuriousAttributes) _then)
      : super(_value, (v) => _then(v as _$_SpuriousAttributes));

  @override
  _$_SpuriousAttributes get _value => super._value as _$_SpuriousAttributes;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_SpuriousAttributes(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpuriousAttributes implements _SpuriousAttributes {
  const _$_SpuriousAttributes({required this.name, required this.value});

  factory _$_SpuriousAttributes.fromJson(Map<String, dynamic> json) =>
      _$$_SpuriousAttributesFromJson(json);

  @override
  final String name;
  @override
  final String value;

  @override
  String toString() {
    return 'SpuriousAttribute(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpuriousAttributes &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_SpuriousAttributesCopyWith<_$_SpuriousAttributes> get copyWith =>
      __$$_SpuriousAttributesCopyWithImpl<_$_SpuriousAttributes>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpuriousAttributesToJson(
      this,
    );
  }
}

abstract class _SpuriousAttributes implements SpuriousAttribute {
  const factory _SpuriousAttributes(
      {required final String name,
      required final String value}) = _$_SpuriousAttributes;

  factory _SpuriousAttributes.fromJson(Map<String, dynamic> json) =
      _$_SpuriousAttributes.fromJson;

  @override
  String get name;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_SpuriousAttributesCopyWith<_$_SpuriousAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}
