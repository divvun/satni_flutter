// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'generator_analysis.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeneratorAnalysis _$GeneratorAnalysisFromJson(Map<String, dynamic> json) {
  return _GeneratorAnalysis.fromJson(json);
}

/// @nodoc
mixin _$GeneratorAnalysis {
  String get wordform => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneratorAnalysisCopyWith<GeneratorAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneratorAnalysisCopyWith<$Res> {
  factory $GeneratorAnalysisCopyWith(
          GeneratorAnalysis value, $Res Function(GeneratorAnalysis) then) =
      _$GeneratorAnalysisCopyWithImpl<$Res>;
  $Res call({String wordform, double weight});
}

/// @nodoc
class _$GeneratorAnalysisCopyWithImpl<$Res>
    implements $GeneratorAnalysisCopyWith<$Res> {
  _$GeneratorAnalysisCopyWithImpl(this._value, this._then);

  final GeneratorAnalysis _value;
  // ignore: unused_field
  final $Res Function(GeneratorAnalysis) _then;

  @override
  $Res call({
    Object? wordform = freezed,
    Object? weight = freezed,
  }) {
    return _then(_value.copyWith(
      wordform: wordform == freezed
          ? _value.wordform
          : wordform // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_GeneratorAnalysisCopyWith<$Res>
    implements $GeneratorAnalysisCopyWith<$Res> {
  factory _$$_GeneratorAnalysisCopyWith(_$_GeneratorAnalysis value,
          $Res Function(_$_GeneratorAnalysis) then) =
      __$$_GeneratorAnalysisCopyWithImpl<$Res>;
  @override
  $Res call({String wordform, double weight});
}

/// @nodoc
class __$$_GeneratorAnalysisCopyWithImpl<$Res>
    extends _$GeneratorAnalysisCopyWithImpl<$Res>
    implements _$$_GeneratorAnalysisCopyWith<$Res> {
  __$$_GeneratorAnalysisCopyWithImpl(
      _$_GeneratorAnalysis _value, $Res Function(_$_GeneratorAnalysis) _then)
      : super(_value, (v) => _then(v as _$_GeneratorAnalysis));

  @override
  _$_GeneratorAnalysis get _value => super._value as _$_GeneratorAnalysis;

  @override
  $Res call({
    Object? wordform = freezed,
    Object? weight = freezed,
  }) {
    return _then(_$_GeneratorAnalysis(
      wordform: wordform == freezed
          ? _value.wordform
          : wordform // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeneratorAnalysis implements _GeneratorAnalysis {
  _$_GeneratorAnalysis({required this.wordform, required this.weight});

  factory _$_GeneratorAnalysis.fromJson(Map<String, dynamic> json) =>
      _$$_GeneratorAnalysisFromJson(json);

  @override
  final String wordform;
  @override
  final double weight;

  @override
  String toString() {
    return 'GeneratorAnalysis(wordform: $wordform, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneratorAnalysis &&
            const DeepCollectionEquality().equals(other.wordform, wordform) &&
            const DeepCollectionEquality().equals(other.weight, weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(wordform),
      const DeepCollectionEquality().hash(weight));

  @JsonKey(ignore: true)
  @override
  _$$_GeneratorAnalysisCopyWith<_$_GeneratorAnalysis> get copyWith =>
      __$$_GeneratorAnalysisCopyWithImpl<_$_GeneratorAnalysis>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeneratorAnalysisToJson(
      this,
    );
  }
}

abstract class _GeneratorAnalysis implements GeneratorAnalysis {
  factory _GeneratorAnalysis(
      {required final String wordform,
      required final double weight}) = _$_GeneratorAnalysis;

  factory _GeneratorAnalysis.fromJson(Map<String, dynamic> json) =
      _$_GeneratorAnalysis.fromJson;

  @override
  String get wordform;
  @override
  double get weight;
  @override
  @JsonKey(ignore: true)
  _$$_GeneratorAnalysisCopyWith<_$_GeneratorAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}
