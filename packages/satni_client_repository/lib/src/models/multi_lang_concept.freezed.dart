// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'multi_lang_concept.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MultiLangConcept _$MultiLangConceptFromJson(Map<String, dynamic> json) {
  return _MultiLangConcept.fromJson(json);
}

/// @nodoc
mixin _$MultiLangConcept {
  String get name => throw _privateConstructorUsedError;
  List<String>? get collections => throw _privateConstructorUsedError;
  List<Concept> get concepts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultiLangConceptCopyWith<MultiLangConcept> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiLangConceptCopyWith<$Res> {
  factory $MultiLangConceptCopyWith(
          MultiLangConcept value, $Res Function(MultiLangConcept) then) =
      _$MultiLangConceptCopyWithImpl<$Res>;
  $Res call({String name, List<String>? collections, List<Concept> concepts});
}

/// @nodoc
class _$MultiLangConceptCopyWithImpl<$Res>
    implements $MultiLangConceptCopyWith<$Res> {
  _$MultiLangConceptCopyWithImpl(this._value, this._then);

  final MultiLangConcept _value;
  // ignore: unused_field
  final $Res Function(MultiLangConcept) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? collections = freezed,
    Object? concepts = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      collections: collections == freezed
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      concepts: concepts == freezed
          ? _value.concepts
          : concepts // ignore: cast_nullable_to_non_nullable
              as List<Concept>,
    ));
  }
}

/// @nodoc
abstract class _$$_MultiLangConceptCopyWith<$Res>
    implements $MultiLangConceptCopyWith<$Res> {
  factory _$$_MultiLangConceptCopyWith(
          _$_MultiLangConcept value, $Res Function(_$_MultiLangConcept) then) =
      __$$_MultiLangConceptCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<String>? collections, List<Concept> concepts});
}

/// @nodoc
class __$$_MultiLangConceptCopyWithImpl<$Res>
    extends _$MultiLangConceptCopyWithImpl<$Res>
    implements _$$_MultiLangConceptCopyWith<$Res> {
  __$$_MultiLangConceptCopyWithImpl(
      _$_MultiLangConcept _value, $Res Function(_$_MultiLangConcept) _then)
      : super(_value, (v) => _then(v as _$_MultiLangConcept));

  @override
  _$_MultiLangConcept get _value => super._value as _$_MultiLangConcept;

  @override
  $Res call({
    Object? name = freezed,
    Object? collections = freezed,
    Object? concepts = freezed,
  }) {
    return _then(_$_MultiLangConcept(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      collections: collections == freezed
          ? _value._collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      concepts: concepts == freezed
          ? _value._concepts
          : concepts // ignore: cast_nullable_to_non_nullable
              as List<Concept>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MultiLangConcept implements _MultiLangConcept {
  const _$_MultiLangConcept(
      {required this.name,
      final List<String>? collections,
      required final List<Concept> concepts})
      : _collections = collections,
        _concepts = concepts;

  factory _$_MultiLangConcept.fromJson(Map<String, dynamic> json) =>
      _$$_MultiLangConceptFromJson(json);

  @override
  final String name;
  final List<String>? _collections;
  @override
  List<String>? get collections {
    final value = _collections;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Concept> _concepts;
  @override
  List<Concept> get concepts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_concepts);
  }

  @override
  String toString() {
    return 'MultiLangConcept(name: $name, collections: $collections, concepts: $concepts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultiLangConcept &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other._collections, _collections) &&
            const DeepCollectionEquality().equals(other._concepts, _concepts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_collections),
      const DeepCollectionEquality().hash(_concepts));

  @JsonKey(ignore: true)
  @override
  _$$_MultiLangConceptCopyWith<_$_MultiLangConcept> get copyWith =>
      __$$_MultiLangConceptCopyWithImpl<_$_MultiLangConcept>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultiLangConceptToJson(
      this,
    );
  }
}

abstract class _MultiLangConcept implements MultiLangConcept {
  const factory _MultiLangConcept(
      {required final String name,
      final List<String>? collections,
      required final List<Concept> concepts}) = _$_MultiLangConcept;

  factory _MultiLangConcept.fromJson(Map<String, dynamic> json) =
      _$_MultiLangConcept.fromJson;

  @override
  String get name;
  @override
  List<String>? get collections;
  @override
  List<Concept> get concepts;
  @override
  @JsonKey(ignore: true)
  _$$_MultiLangConceptCopyWith<_$_MultiLangConcept> get copyWith =>
      throw _privateConstructorUsedError;
}
