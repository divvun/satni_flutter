// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'restriction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Restriction _$RestrictionFromJson(Map<String, dynamic> json) {
  return _Restriction.fromJson(json);
}

/// @nodoc
mixin _$Restriction {
  String get restriction => throw _privateConstructorUsedError;
  List<SpuriousAttribute> get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestrictionCopyWith<Restriction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestrictionCopyWith<$Res> {
  factory $RestrictionCopyWith(
          Restriction value, $Res Function(Restriction) then) =
      _$RestrictionCopyWithImpl<$Res>;
  $Res call({String restriction, List<SpuriousAttribute> attributes});
}

/// @nodoc
class _$RestrictionCopyWithImpl<$Res> implements $RestrictionCopyWith<$Res> {
  _$RestrictionCopyWithImpl(this._value, this._then);

  final Restriction _value;
  // ignore: unused_field
  final $Res Function(Restriction) _then;

  @override
  $Res call({
    Object? restriction = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      restriction: restriction == freezed
          ? _value.restriction
          : restriction // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<SpuriousAttribute>,
    ));
  }
}

/// @nodoc
abstract class _$$_RestrictionCopyWith<$Res>
    implements $RestrictionCopyWith<$Res> {
  factory _$$_RestrictionCopyWith(
          _$_Restriction value, $Res Function(_$_Restriction) then) =
      __$$_RestrictionCopyWithImpl<$Res>;
  @override
  $Res call({String restriction, List<SpuriousAttribute> attributes});
}

/// @nodoc
class __$$_RestrictionCopyWithImpl<$Res> extends _$RestrictionCopyWithImpl<$Res>
    implements _$$_RestrictionCopyWith<$Res> {
  __$$_RestrictionCopyWithImpl(
      _$_Restriction _value, $Res Function(_$_Restriction) _then)
      : super(_value, (v) => _then(v as _$_Restriction));

  @override
  _$_Restriction get _value => super._value as _$_Restriction;

  @override
  $Res call({
    Object? restriction = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$_Restriction(
      restriction: restriction == freezed
          ? _value.restriction
          : restriction // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: attributes == freezed
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<SpuriousAttribute>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Restriction implements _Restriction {
  const _$_Restriction(
      {required this.restriction,
      final List<SpuriousAttribute> attributes = const []})
      : _attributes = attributes;

  factory _$_Restriction.fromJson(Map<String, dynamic> json) =>
      _$$_RestrictionFromJson(json);

  @override
  final String restriction;
  final List<SpuriousAttribute> _attributes;
  @override
  @JsonKey()
  List<SpuriousAttribute> get attributes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  String toString() {
    return 'Restriction(restriction: $restriction, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Restriction &&
            const DeepCollectionEquality()
                .equals(other.restriction, restriction) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(restriction),
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  _$$_RestrictionCopyWith<_$_Restriction> get copyWith =>
      __$$_RestrictionCopyWithImpl<_$_Restriction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestrictionToJson(
      this,
    );
  }
}

abstract class _Restriction implements Restriction {
  const factory _Restriction(
      {required final String restriction,
      final List<SpuriousAttribute> attributes}) = _$_Restriction;

  factory _Restriction.fromJson(Map<String, dynamic> json) =
      _$_Restriction.fromJson;

  @override
  String get restriction;
  @override
  List<SpuriousAttribute> get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_RestrictionCopyWith<_$_Restriction> get copyWith =>
      throw _privateConstructorUsedError;
}
