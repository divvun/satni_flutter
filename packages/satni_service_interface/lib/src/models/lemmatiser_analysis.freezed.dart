// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lemmatiser_analysis.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LemmatiserAnalysis _$LemmatiserAnalysisFromJson(Map<String, dynamic> json) {
  return _LemmatiserAnalysis.fromJson(json);
}

/// @nodoc
mixin _$LemmatiserAnalysis {
  String get analysis => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LemmatiserAnalysisCopyWith<LemmatiserAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LemmatiserAnalysisCopyWith<$Res> {
  factory $LemmatiserAnalysisCopyWith(
          LemmatiserAnalysis value, $Res Function(LemmatiserAnalysis) then) =
      _$LemmatiserAnalysisCopyWithImpl<$Res>;
  $Res call({String analysis, double weight});
}

/// @nodoc
class _$LemmatiserAnalysisCopyWithImpl<$Res>
    implements $LemmatiserAnalysisCopyWith<$Res> {
  _$LemmatiserAnalysisCopyWithImpl(this._value, this._then);

  final LemmatiserAnalysis _value;
  // ignore: unused_field
  final $Res Function(LemmatiserAnalysis) _then;

  @override
  $Res call({
    Object? analysis = freezed,
    Object? weight = freezed,
  }) {
    return _then(_value.copyWith(
      analysis: analysis == freezed
          ? _value.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_LemmatiserAnalysisCopyWith<$Res>
    implements $LemmatiserAnalysisCopyWith<$Res> {
  factory _$$_LemmatiserAnalysisCopyWith(_$_LemmatiserAnalysis value,
          $Res Function(_$_LemmatiserAnalysis) then) =
      __$$_LemmatiserAnalysisCopyWithImpl<$Res>;
  @override
  $Res call({String analysis, double weight});
}

/// @nodoc
class __$$_LemmatiserAnalysisCopyWithImpl<$Res>
    extends _$LemmatiserAnalysisCopyWithImpl<$Res>
    implements _$$_LemmatiserAnalysisCopyWith<$Res> {
  __$$_LemmatiserAnalysisCopyWithImpl(
      _$_LemmatiserAnalysis _value, $Res Function(_$_LemmatiserAnalysis) _then)
      : super(_value, (v) => _then(v as _$_LemmatiserAnalysis));

  @override
  _$_LemmatiserAnalysis get _value => super._value as _$_LemmatiserAnalysis;

  @override
  $Res call({
    Object? analysis = freezed,
    Object? weight = freezed,
  }) {
    return _then(_$_LemmatiserAnalysis(
      analysis: analysis == freezed
          ? _value.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
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
class _$_LemmatiserAnalysis implements _LemmatiserAnalysis {
  _$_LemmatiserAnalysis({required this.analysis, required this.weight});

  factory _$_LemmatiserAnalysis.fromJson(Map<String, dynamic> json) =>
      _$$_LemmatiserAnalysisFromJson(json);

  @override
  final String analysis;
  @override
  final double weight;

  @override
  String toString() {
    return 'LemmatiserAnalysis(analysis: $analysis, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LemmatiserAnalysis &&
            const DeepCollectionEquality().equals(other.analysis, analysis) &&
            const DeepCollectionEquality().equals(other.weight, weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(analysis),
      const DeepCollectionEquality().hash(weight));

  @JsonKey(ignore: true)
  @override
  _$$_LemmatiserAnalysisCopyWith<_$_LemmatiserAnalysis> get copyWith =>
      __$$_LemmatiserAnalysisCopyWithImpl<_$_LemmatiserAnalysis>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LemmatiserAnalysisToJson(
      this,
    );
  }
}

abstract class _LemmatiserAnalysis implements LemmatiserAnalysis {
  factory _LemmatiserAnalysis(
      {required final String analysis,
      required final double weight}) = _$_LemmatiserAnalysis;

  factory _LemmatiserAnalysis.fromJson(Map<String, dynamic> json) =
      _$_LemmatiserAnalysis.fromJson;

  @override
  String get analysis;
  @override
  double get weight;
  @override
  @JsonKey(ignore: true)
  _$$_LemmatiserAnalysisCopyWith<_$_LemmatiserAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}
