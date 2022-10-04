// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'generator_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeneratorResults _$GeneratorResultsFromJson(Map<String, dynamic> json) {
  return _GeneratorResults.fromJson(json);
}

/// @nodoc
mixin _$GeneratorResults {
  List<GeneratorResult> get generated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneratorResultsCopyWith<GeneratorResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneratorResultsCopyWith<$Res> {
  factory $GeneratorResultsCopyWith(
          GeneratorResults value, $Res Function(GeneratorResults) then) =
      _$GeneratorResultsCopyWithImpl<$Res>;
  $Res call({List<GeneratorResult> generated});
}

/// @nodoc
class _$GeneratorResultsCopyWithImpl<$Res>
    implements $GeneratorResultsCopyWith<$Res> {
  _$GeneratorResultsCopyWithImpl(this._value, this._then);

  final GeneratorResults _value;
  // ignore: unused_field
  final $Res Function(GeneratorResults) _then;

  @override
  $Res call({
    Object? generated = freezed,
  }) {
    return _then(_value.copyWith(
      generated: generated == freezed
          ? _value.generated
          : generated // ignore: cast_nullable_to_non_nullable
              as List<GeneratorResult>,
    ));
  }
}

/// @nodoc
abstract class _$$_GeneratorResultsCopyWith<$Res>
    implements $GeneratorResultsCopyWith<$Res> {
  factory _$$_GeneratorResultsCopyWith(
          _$_GeneratorResults value, $Res Function(_$_GeneratorResults) then) =
      __$$_GeneratorResultsCopyWithImpl<$Res>;
  @override
  $Res call({List<GeneratorResult> generated});
}

/// @nodoc
class __$$_GeneratorResultsCopyWithImpl<$Res>
    extends _$GeneratorResultsCopyWithImpl<$Res>
    implements _$$_GeneratorResultsCopyWith<$Res> {
  __$$_GeneratorResultsCopyWithImpl(
      _$_GeneratorResults _value, $Res Function(_$_GeneratorResults) _then)
      : super(_value, (v) => _then(v as _$_GeneratorResults));

  @override
  _$_GeneratorResults get _value => super._value as _$_GeneratorResults;

  @override
  $Res call({
    Object? generated = freezed,
  }) {
    return _then(_$_GeneratorResults(
      generated: generated == freezed
          ? _value._generated
          : generated // ignore: cast_nullable_to_non_nullable
              as List<GeneratorResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeneratorResults implements _GeneratorResults {
  _$_GeneratorResults({required final List<GeneratorResult> generated})
      : _generated = generated;

  factory _$_GeneratorResults.fromJson(Map<String, dynamic> json) =>
      _$$_GeneratorResultsFromJson(json);

  final List<GeneratorResult> _generated;
  @override
  List<GeneratorResult> get generated {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_generated);
  }

  @override
  String toString() {
    return 'GeneratorResults(generated: $generated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneratorResults &&
            const DeepCollectionEquality()
                .equals(other._generated, _generated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_generated));

  @JsonKey(ignore: true)
  @override
  _$$_GeneratorResultsCopyWith<_$_GeneratorResults> get copyWith =>
      __$$_GeneratorResultsCopyWithImpl<_$_GeneratorResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeneratorResultsToJson(
      this,
    );
  }
}

abstract class _GeneratorResults implements GeneratorResults {
  factory _GeneratorResults({required final List<GeneratorResult> generated}) =
      _$_GeneratorResults;

  factory _GeneratorResults.fromJson(Map<String, dynamic> json) =
      _$_GeneratorResults.fromJson;

  @override
  List<GeneratorResult> get generated;
  @override
  @JsonKey(ignore: true)
  _$$_GeneratorResultsCopyWith<_$_GeneratorResults> get copyWith =>
      throw _privateConstructorUsedError;
}
