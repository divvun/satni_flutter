// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'generator_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeneratorResult _$GeneratorResultFromJson(Map<String, dynamic> json) {
  return _GeneratorResult.fromJson(json);
}

/// @nodoc
mixin _$GeneratorResult {
  String get paradigmTemplate => throw _privateConstructorUsedError;
  List<GeneratorAnalysis> get analyses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneratorResultCopyWith<GeneratorResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneratorResultCopyWith<$Res> {
  factory $GeneratorResultCopyWith(
          GeneratorResult value, $Res Function(GeneratorResult) then) =
      _$GeneratorResultCopyWithImpl<$Res>;
  $Res call({String paradigmTemplate, List<GeneratorAnalysis> analyses});
}

/// @nodoc
class _$GeneratorResultCopyWithImpl<$Res>
    implements $GeneratorResultCopyWith<$Res> {
  _$GeneratorResultCopyWithImpl(this._value, this._then);

  final GeneratorResult _value;
  // ignore: unused_field
  final $Res Function(GeneratorResult) _then;

  @override
  $Res call({
    Object? paradigmTemplate = freezed,
    Object? analyses = freezed,
  }) {
    return _then(_value.copyWith(
      paradigmTemplate: paradigmTemplate == freezed
          ? _value.paradigmTemplate
          : paradigmTemplate // ignore: cast_nullable_to_non_nullable
              as String,
      analyses: analyses == freezed
          ? _value.analyses
          : analyses // ignore: cast_nullable_to_non_nullable
              as List<GeneratorAnalysis>,
    ));
  }
}

/// @nodoc
abstract class _$$_GeneratorResultCopyWith<$Res>
    implements $GeneratorResultCopyWith<$Res> {
  factory _$$_GeneratorResultCopyWith(
          _$_GeneratorResult value, $Res Function(_$_GeneratorResult) then) =
      __$$_GeneratorResultCopyWithImpl<$Res>;
  @override
  $Res call({String paradigmTemplate, List<GeneratorAnalysis> analyses});
}

/// @nodoc
class __$$_GeneratorResultCopyWithImpl<$Res>
    extends _$GeneratorResultCopyWithImpl<$Res>
    implements _$$_GeneratorResultCopyWith<$Res> {
  __$$_GeneratorResultCopyWithImpl(
      _$_GeneratorResult _value, $Res Function(_$_GeneratorResult) _then)
      : super(_value, (v) => _then(v as _$_GeneratorResult));

  @override
  _$_GeneratorResult get _value => super._value as _$_GeneratorResult;

  @override
  $Res call({
    Object? paradigmTemplate = freezed,
    Object? analyses = freezed,
  }) {
    return _then(_$_GeneratorResult(
      paradigmTemplate: paradigmTemplate == freezed
          ? _value.paradigmTemplate
          : paradigmTemplate // ignore: cast_nullable_to_non_nullable
              as String,
      analyses: analyses == freezed
          ? _value._analyses
          : analyses // ignore: cast_nullable_to_non_nullable
              as List<GeneratorAnalysis>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeneratorResult implements _GeneratorResult {
  _$_GeneratorResult(
      {required this.paradigmTemplate,
      required final List<GeneratorAnalysis> analyses})
      : _analyses = analyses;

  factory _$_GeneratorResult.fromJson(Map<String, dynamic> json) =>
      _$$_GeneratorResultFromJson(json);

  @override
  final String paradigmTemplate;
  final List<GeneratorAnalysis> _analyses;
  @override
  List<GeneratorAnalysis> get analyses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_analyses);
  }

  @override
  String toString() {
    return 'GeneratorResult(paradigmTemplate: $paradigmTemplate, analyses: $analyses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneratorResult &&
            const DeepCollectionEquality()
                .equals(other.paradigmTemplate, paradigmTemplate) &&
            const DeepCollectionEquality().equals(other._analyses, _analyses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(paradigmTemplate),
      const DeepCollectionEquality().hash(_analyses));

  @JsonKey(ignore: true)
  @override
  _$$_GeneratorResultCopyWith<_$_GeneratorResult> get copyWith =>
      __$$_GeneratorResultCopyWithImpl<_$_GeneratorResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeneratorResultToJson(
      this,
    );
  }
}

abstract class _GeneratorResult implements GeneratorResult {
  factory _GeneratorResult(
      {required final String paradigmTemplate,
      required final List<GeneratorAnalysis> analyses}) = _$_GeneratorResult;

  factory _GeneratorResult.fromJson(Map<String, dynamic> json) =
      _$_GeneratorResult.fromJson;

  @override
  String get paradigmTemplate;
  @override
  List<GeneratorAnalysis> get analyses;
  @override
  @JsonKey(ignore: true)
  _$$_GeneratorResultCopyWith<_$_GeneratorResult> get copyWith =>
      throw _privateConstructorUsedError;
}
