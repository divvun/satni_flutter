// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lemmatised_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LemmatisedResults _$LemmatisedResultsFromJson(Map<String, dynamic> json) {
  return _LemmatisedResults.fromJson(json);
}

/// @nodoc
mixin _$LemmatisedResults {
  List<LemmatisedResult> get lemmatised => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LemmatisedResultsCopyWith<LemmatisedResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LemmatisedResultsCopyWith<$Res> {
  factory $LemmatisedResultsCopyWith(
          LemmatisedResults value, $Res Function(LemmatisedResults) then) =
      _$LemmatisedResultsCopyWithImpl<$Res>;
  $Res call({List<LemmatisedResult> lemmatised});
}

/// @nodoc
class _$LemmatisedResultsCopyWithImpl<$Res>
    implements $LemmatisedResultsCopyWith<$Res> {
  _$LemmatisedResultsCopyWithImpl(this._value, this._then);

  final LemmatisedResults _value;
  // ignore: unused_field
  final $Res Function(LemmatisedResults) _then;

  @override
  $Res call({
    Object? lemmatised = freezed,
  }) {
    return _then(_value.copyWith(
      lemmatised: lemmatised == freezed
          ? _value.lemmatised
          : lemmatised // ignore: cast_nullable_to_non_nullable
              as List<LemmatisedResult>,
    ));
  }
}

/// @nodoc
abstract class _$$_LemmatisedResultsCopyWith<$Res>
    implements $LemmatisedResultsCopyWith<$Res> {
  factory _$$_LemmatisedResultsCopyWith(_$_LemmatisedResults value,
          $Res Function(_$_LemmatisedResults) then) =
      __$$_LemmatisedResultsCopyWithImpl<$Res>;
  @override
  $Res call({List<LemmatisedResult> lemmatised});
}

/// @nodoc
class __$$_LemmatisedResultsCopyWithImpl<$Res>
    extends _$LemmatisedResultsCopyWithImpl<$Res>
    implements _$$_LemmatisedResultsCopyWith<$Res> {
  __$$_LemmatisedResultsCopyWithImpl(
      _$_LemmatisedResults _value, $Res Function(_$_LemmatisedResults) _then)
      : super(_value, (v) => _then(v as _$_LemmatisedResults));

  @override
  _$_LemmatisedResults get _value => super._value as _$_LemmatisedResults;

  @override
  $Res call({
    Object? lemmatised = freezed,
  }) {
    return _then(_$_LemmatisedResults(
      lemmatised: lemmatised == freezed
          ? _value._lemmatised
          : lemmatised // ignore: cast_nullable_to_non_nullable
              as List<LemmatisedResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LemmatisedResults implements _LemmatisedResults {
  _$_LemmatisedResults({required final List<LemmatisedResult> lemmatised})
      : _lemmatised = lemmatised;

  factory _$_LemmatisedResults.fromJson(Map<String, dynamic> json) =>
      _$$_LemmatisedResultsFromJson(json);

  final List<LemmatisedResult> _lemmatised;
  @override
  List<LemmatisedResult> get lemmatised {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lemmatised);
  }

  @override
  String toString() {
    return 'LemmatisedResults(lemmatised: $lemmatised)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LemmatisedResults &&
            const DeepCollectionEquality()
                .equals(other._lemmatised, _lemmatised));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_lemmatised));

  @JsonKey(ignore: true)
  @override
  _$$_LemmatisedResultsCopyWith<_$_LemmatisedResults> get copyWith =>
      __$$_LemmatisedResultsCopyWithImpl<_$_LemmatisedResults>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LemmatisedResultsToJson(
      this,
    );
  }
}

abstract class _LemmatisedResults implements LemmatisedResults {
  factory _LemmatisedResults(
          {required final List<LemmatisedResult> lemmatised}) =
      _$_LemmatisedResults;

  factory _LemmatisedResults.fromJson(Map<String, dynamic> json) =
      _$_LemmatisedResults.fromJson;

  @override
  List<LemmatisedResult> get lemmatised;
  @override
  @JsonKey(ignore: true)
  _$$_LemmatisedResultsCopyWith<_$_LemmatisedResults> get copyWith =>
      throw _privateConstructorUsedError;
}
