// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'concept.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Concept _$ConceptFromJson(Map<String, dynamic> json) {
  return _Concept.fromJson(json);
}

/// @nodoc
mixin _$Concept {
  String get name => throw _privateConstructorUsedError;
  String get lang => throw _privateConstructorUsedError;
  String get definition => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;
  List<Term> get terms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConceptCopyWith<Concept> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConceptCopyWith<$Res> {
  factory $ConceptCopyWith(Concept value, $Res Function(Concept) then) =
      _$ConceptCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String lang,
      String definition,
      String explanation,
      List<Term> terms});
}

/// @nodoc
class _$ConceptCopyWithImpl<$Res> implements $ConceptCopyWith<$Res> {
  _$ConceptCopyWithImpl(this._value, this._then);

  final Concept _value;
  // ignore: unused_field
  final $Res Function(Concept) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? lang = freezed,
    Object? definition = freezed,
    Object? explanation = freezed,
    Object? terms = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      definition: definition == freezed
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: explanation == freezed
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      terms: terms == freezed
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as List<Term>,
    ));
  }
}

/// @nodoc
abstract class _$$_ConceptCopyWith<$Res> implements $ConceptCopyWith<$Res> {
  factory _$$_ConceptCopyWith(
          _$_Concept value, $Res Function(_$_Concept) then) =
      __$$_ConceptCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String lang,
      String definition,
      String explanation,
      List<Term> terms});
}

/// @nodoc
class __$$_ConceptCopyWithImpl<$Res> extends _$ConceptCopyWithImpl<$Res>
    implements _$$_ConceptCopyWith<$Res> {
  __$$_ConceptCopyWithImpl(_$_Concept _value, $Res Function(_$_Concept) _then)
      : super(_value, (v) => _then(v as _$_Concept));

  @override
  _$_Concept get _value => super._value as _$_Concept;

  @override
  $Res call({
    Object? name = freezed,
    Object? lang = freezed,
    Object? definition = freezed,
    Object? explanation = freezed,
    Object? terms = freezed,
  }) {
    return _then(_$_Concept(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      definition: definition == freezed
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: explanation == freezed
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      terms: terms == freezed
          ? _value._terms
          : terms // ignore: cast_nullable_to_non_nullable
              as List<Term>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Concept implements _Concept {
  const _$_Concept(
      {required this.name,
      required this.lang,
      this.definition = '',
      this.explanation = '',
      required final List<Term> terms})
      : _terms = terms;

  factory _$_Concept.fromJson(Map<String, dynamic> json) =>
      _$$_ConceptFromJson(json);

  @override
  final String name;
  @override
  final String lang;
  @override
  @JsonKey()
  final String definition;
  @override
  @JsonKey()
  final String explanation;
  final List<Term> _terms;
  @override
  List<Term> get terms {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_terms);
  }

  @override
  String toString() {
    return 'Concept(name: $name, lang: $lang, definition: $definition, explanation: $explanation, terms: $terms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Concept &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.lang, lang) &&
            const DeepCollectionEquality()
                .equals(other.definition, definition) &&
            const DeepCollectionEquality()
                .equals(other.explanation, explanation) &&
            const DeepCollectionEquality().equals(other._terms, _terms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(lang),
      const DeepCollectionEquality().hash(definition),
      const DeepCollectionEquality().hash(explanation),
      const DeepCollectionEquality().hash(_terms));

  @JsonKey(ignore: true)
  @override
  _$$_ConceptCopyWith<_$_Concept> get copyWith =>
      __$$_ConceptCopyWithImpl<_$_Concept>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConceptToJson(
      this,
    );
  }
}

abstract class _Concept implements Concept {
  const factory _Concept(
      {required final String name,
      required final String lang,
      final String definition,
      final String explanation,
      required final List<Term> terms}) = _$_Concept;

  factory _Concept.fromJson(Map<String, dynamic> json) = _$_Concept.fromJson;

  @override
  String get name;
  @override
  String get lang;
  @override
  String get definition;
  @override
  String get explanation;
  @override
  List<Term> get terms;
  @override
  @JsonKey(ignore: true)
  _$$_ConceptCopyWith<_$_Concept> get copyWith =>
      throw _privateConstructorUsedError;
}
