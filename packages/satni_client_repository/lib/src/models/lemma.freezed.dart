// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lemma.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Lemma _$LemmaFromJson(Map<String, dynamic> json) {
  return _Lemma.fromJson(json);
}

/// @nodoc
mixin _$Lemma {
  String get lemma => throw _privateConstructorUsedError;
  String get presentationLemma => throw _privateConstructorUsedError;
  String get pos => throw _privateConstructorUsedError;
  List<SpuriousAttribute> get spuriosAttributes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LemmaCopyWith<Lemma> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LemmaCopyWith<$Res> {
  factory $LemmaCopyWith(Lemma value, $Res Function(Lemma) then) =
      _$LemmaCopyWithImpl<$Res>;
  $Res call(
      {String lemma,
      String presentationLemma,
      String pos,
      List<SpuriousAttribute> spuriosAttributes});
}

/// @nodoc
class _$LemmaCopyWithImpl<$Res> implements $LemmaCopyWith<$Res> {
  _$LemmaCopyWithImpl(this._value, this._then);

  final Lemma _value;
  // ignore: unused_field
  final $Res Function(Lemma) _then;

  @override
  $Res call({
    Object? lemma = freezed,
    Object? presentationLemma = freezed,
    Object? pos = freezed,
    Object? spuriosAttributes = freezed,
  }) {
    return _then(_value.copyWith(
      lemma: lemma == freezed
          ? _value.lemma
          : lemma // ignore: cast_nullable_to_non_nullable
              as String,
      presentationLemma: presentationLemma == freezed
          ? _value.presentationLemma
          : presentationLemma // ignore: cast_nullable_to_non_nullable
              as String,
      pos: pos == freezed
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as String,
      spuriosAttributes: spuriosAttributes == freezed
          ? _value.spuriosAttributes
          : spuriosAttributes // ignore: cast_nullable_to_non_nullable
              as List<SpuriousAttribute>,
    ));
  }
}

/// @nodoc
abstract class _$$_LemmaCopyWith<$Res> implements $LemmaCopyWith<$Res> {
  factory _$$_LemmaCopyWith(_$_Lemma value, $Res Function(_$_Lemma) then) =
      __$$_LemmaCopyWithImpl<$Res>;
  @override
  $Res call(
      {String lemma,
      String presentationLemma,
      String pos,
      List<SpuriousAttribute> spuriosAttributes});
}

/// @nodoc
class __$$_LemmaCopyWithImpl<$Res> extends _$LemmaCopyWithImpl<$Res>
    implements _$$_LemmaCopyWith<$Res> {
  __$$_LemmaCopyWithImpl(_$_Lemma _value, $Res Function(_$_Lemma) _then)
      : super(_value, (v) => _then(v as _$_Lemma));

  @override
  _$_Lemma get _value => super._value as _$_Lemma;

  @override
  $Res call({
    Object? lemma = freezed,
    Object? presentationLemma = freezed,
    Object? pos = freezed,
    Object? spuriosAttributes = freezed,
  }) {
    return _then(_$_Lemma(
      lemma: lemma == freezed
          ? _value.lemma
          : lemma // ignore: cast_nullable_to_non_nullable
              as String,
      presentationLemma: presentationLemma == freezed
          ? _value.presentationLemma
          : presentationLemma // ignore: cast_nullable_to_non_nullable
              as String,
      pos: pos == freezed
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as String,
      spuriosAttributes: spuriosAttributes == freezed
          ? _value._spuriosAttributes
          : spuriosAttributes // ignore: cast_nullable_to_non_nullable
              as List<SpuriousAttribute>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lemma implements _Lemma {
  const _$_Lemma(
      {required this.lemma,
      required this.presentationLemma,
      required this.pos,
      required final List<SpuriousAttribute> spuriosAttributes})
      : _spuriosAttributes = spuriosAttributes;

  factory _$_Lemma.fromJson(Map<String, dynamic> json) =>
      _$$_LemmaFromJson(json);

  @override
  final String lemma;
  @override
  final String presentationLemma;
  @override
  final String pos;
  final List<SpuriousAttribute> _spuriosAttributes;
  @override
  List<SpuriousAttribute> get spuriosAttributes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spuriosAttributes);
  }

  @override
  String toString() {
    return 'Lemma(lemma: $lemma, presentationLemma: $presentationLemma, pos: $pos, spuriosAttributes: $spuriosAttributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lemma &&
            const DeepCollectionEquality().equals(other.lemma, lemma) &&
            const DeepCollectionEquality()
                .equals(other.presentationLemma, presentationLemma) &&
            const DeepCollectionEquality().equals(other.pos, pos) &&
            const DeepCollectionEquality()
                .equals(other._spuriosAttributes, _spuriosAttributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lemma),
      const DeepCollectionEquality().hash(presentationLemma),
      const DeepCollectionEquality().hash(pos),
      const DeepCollectionEquality().hash(_spuriosAttributes));

  @JsonKey(ignore: true)
  @override
  _$$_LemmaCopyWith<_$_Lemma> get copyWith =>
      __$$_LemmaCopyWithImpl<_$_Lemma>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LemmaToJson(
      this,
    );
  }
}

abstract class _Lemma implements Lemma {
  const factory _Lemma(
      {required final String lemma,
      required final String presentationLemma,
      required final String pos,
      required final List<SpuriousAttribute> spuriosAttributes}) = _$_Lemma;

  factory _Lemma.fromJson(Map<String, dynamic> json) = _$_Lemma.fromJson;

  @override
  String get lemma;
  @override
  String get presentationLemma;
  @override
  String get pos;
  @override
  List<SpuriousAttribute> get spuriosAttributes;
  @override
  @JsonKey(ignore: true)
  _$$_LemmaCopyWith<_$_Lemma> get copyWith =>
      throw _privateConstructorUsedError;
}
