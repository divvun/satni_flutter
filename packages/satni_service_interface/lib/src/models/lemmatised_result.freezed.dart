// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lemmatised_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LemmatisedResult _$LemmatisedResultFromJson(Map<String, dynamic> json) {
  return _LemmatisedResult.fromJson(json);
}

/// @nodoc
mixin _$LemmatisedResult {
  String get language => throw _privateConstructorUsedError;
  List<String> get wordforms => throw _privateConstructorUsedError;
  List<LemmatiserAnalysis> get analyses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LemmatisedResultCopyWith<LemmatisedResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LemmatisedResultCopyWith<$Res> {
  factory $LemmatisedResultCopyWith(
          LemmatisedResult value, $Res Function(LemmatisedResult) then) =
      _$LemmatisedResultCopyWithImpl<$Res>;
  $Res call(
      {String language,
      List<String> wordforms,
      List<LemmatiserAnalysis> analyses});
}

/// @nodoc
class _$LemmatisedResultCopyWithImpl<$Res>
    implements $LemmatisedResultCopyWith<$Res> {
  _$LemmatisedResultCopyWithImpl(this._value, this._then);

  final LemmatisedResult _value;
  // ignore: unused_field
  final $Res Function(LemmatisedResult) _then;

  @override
  $Res call({
    Object? language = freezed,
    Object? wordforms = freezed,
    Object? analyses = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      wordforms: wordforms == freezed
          ? _value.wordforms
          : wordforms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      analyses: analyses == freezed
          ? _value.analyses
          : analyses // ignore: cast_nullable_to_non_nullable
              as List<LemmatiserAnalysis>,
    ));
  }
}

/// @nodoc
abstract class _$$_LemmatisedResultCopyWith<$Res>
    implements $LemmatisedResultCopyWith<$Res> {
  factory _$$_LemmatisedResultCopyWith(
          _$_LemmatisedResult value, $Res Function(_$_LemmatisedResult) then) =
      __$$_LemmatisedResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {String language,
      List<String> wordforms,
      List<LemmatiserAnalysis> analyses});
}

/// @nodoc
class __$$_LemmatisedResultCopyWithImpl<$Res>
    extends _$LemmatisedResultCopyWithImpl<$Res>
    implements _$$_LemmatisedResultCopyWith<$Res> {
  __$$_LemmatisedResultCopyWithImpl(
      _$_LemmatisedResult _value, $Res Function(_$_LemmatisedResult) _then)
      : super(_value, (v) => _then(v as _$_LemmatisedResult));

  @override
  _$_LemmatisedResult get _value => super._value as _$_LemmatisedResult;

  @override
  $Res call({
    Object? language = freezed,
    Object? wordforms = freezed,
    Object? analyses = freezed,
  }) {
    return _then(_$_LemmatisedResult(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      wordforms: wordforms == freezed
          ? _value._wordforms
          : wordforms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      analyses: analyses == freezed
          ? _value._analyses
          : analyses // ignore: cast_nullable_to_non_nullable
              as List<LemmatiserAnalysis>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LemmatisedResult implements _LemmatisedResult {
  _$_LemmatisedResult(
      {required this.language,
      required final List<String> wordforms,
      required final List<LemmatiserAnalysis> analyses})
      : _wordforms = wordforms,
        _analyses = analyses;

  factory _$_LemmatisedResult.fromJson(Map<String, dynamic> json) =>
      _$$_LemmatisedResultFromJson(json);

  @override
  final String language;
  final List<String> _wordforms;
  @override
  List<String> get wordforms {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wordforms);
  }

  final List<LemmatiserAnalysis> _analyses;
  @override
  List<LemmatiserAnalysis> get analyses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_analyses);
  }

  @override
  String toString() {
    return 'LemmatisedResult(language: $language, wordforms: $wordforms, analyses: $analyses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LemmatisedResult &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality()
                .equals(other._wordforms, _wordforms) &&
            const DeepCollectionEquality().equals(other._analyses, _analyses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(_wordforms),
      const DeepCollectionEquality().hash(_analyses));

  @JsonKey(ignore: true)
  @override
  _$$_LemmatisedResultCopyWith<_$_LemmatisedResult> get copyWith =>
      __$$_LemmatisedResultCopyWithImpl<_$_LemmatisedResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LemmatisedResultToJson(
      this,
    );
  }
}

abstract class _LemmatisedResult implements LemmatisedResult {
  factory _LemmatisedResult(
      {required final String language,
      required final List<String> wordforms,
      required final List<LemmatiserAnalysis> analyses}) = _$_LemmatisedResult;

  factory _LemmatisedResult.fromJson(Map<String, dynamic> json) =
      _$_LemmatisedResult.fromJson;

  @override
  String get language;
  @override
  List<String> get wordforms;
  @override
  List<LemmatiserAnalysis> get analyses;
  @override
  @JsonKey(ignore: true)
  _$$_LemmatisedResultCopyWith<_$_LemmatisedResult> get copyWith =>
      throw _privateConstructorUsedError;
}
