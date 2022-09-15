// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'example_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExampleGroup _$ExampleGroupFromJson(Map<String, dynamic> json) {
  return _ExampleGroup.fromJson(json);
}

/// @nodoc
mixin _$ExampleGroup {
  String get example => throw _privateConstructorUsedError;
  String get translation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExampleGroupCopyWith<ExampleGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleGroupCopyWith<$Res> {
  factory $ExampleGroupCopyWith(
          ExampleGroup value, $Res Function(ExampleGroup) then) =
      _$ExampleGroupCopyWithImpl<$Res>;
  $Res call({String example, String translation});
}

/// @nodoc
class _$ExampleGroupCopyWithImpl<$Res> implements $ExampleGroupCopyWith<$Res> {
  _$ExampleGroupCopyWithImpl(this._value, this._then);

  final ExampleGroup _value;
  // ignore: unused_field
  final $Res Function(ExampleGroup) _then;

  @override
  $Res call({
    Object? example = freezed,
    Object? translation = freezed,
  }) {
    return _then(_value.copyWith(
      example: example == freezed
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String,
      translation: translation == freezed
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ExampleGroupCopyWith<$Res>
    implements $ExampleGroupCopyWith<$Res> {
  factory _$$_ExampleGroupCopyWith(
          _$_ExampleGroup value, $Res Function(_$_ExampleGroup) then) =
      __$$_ExampleGroupCopyWithImpl<$Res>;
  @override
  $Res call({String example, String translation});
}

/// @nodoc
class __$$_ExampleGroupCopyWithImpl<$Res>
    extends _$ExampleGroupCopyWithImpl<$Res>
    implements _$$_ExampleGroupCopyWith<$Res> {
  __$$_ExampleGroupCopyWithImpl(
      _$_ExampleGroup _value, $Res Function(_$_ExampleGroup) _then)
      : super(_value, (v) => _then(v as _$_ExampleGroup));

  @override
  _$_ExampleGroup get _value => super._value as _$_ExampleGroup;

  @override
  $Res call({
    Object? example = freezed,
    Object? translation = freezed,
  }) {
    return _then(_$_ExampleGroup(
      example: example == freezed
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String,
      translation: translation == freezed
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExampleGroup implements _ExampleGroup {
  const _$_ExampleGroup({required this.example, required this.translation});

  factory _$_ExampleGroup.fromJson(Map<String, dynamic> json) =>
      _$$_ExampleGroupFromJson(json);

  @override
  final String example;
  @override
  final String translation;

  @override
  String toString() {
    return 'ExampleGroup(example: $example, translation: $translation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExampleGroup &&
            const DeepCollectionEquality().equals(other.example, example) &&
            const DeepCollectionEquality()
                .equals(other.translation, translation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(example),
      const DeepCollectionEquality().hash(translation));

  @JsonKey(ignore: true)
  @override
  _$$_ExampleGroupCopyWith<_$_ExampleGroup> get copyWith =>
      __$$_ExampleGroupCopyWithImpl<_$_ExampleGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExampleGroupToJson(
      this,
    );
  }
}

abstract class _ExampleGroup implements ExampleGroup {
  const factory _ExampleGroup(
      {required final String example,
      required final String translation}) = _$_ExampleGroup;

  factory _ExampleGroup.fromJson(Map<String, dynamic> json) =
      _$_ExampleGroup.fromJson;

  @override
  String get example;
  @override
  String get translation;
  @override
  @JsonKey(ignore: true)
  _$$_ExampleGroupCopyWith<_$_ExampleGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
