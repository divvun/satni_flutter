// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'translation_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TranslationGroup _$TranslationGroupFromJson(Map<String, dynamic> json) {
  return _TranslationGroup.fromJson(json);
}

/// @nodoc
mixin _$TranslationGroup {
  List<Lemma> get translationLemmas => throw _privateConstructorUsedError;
  Restriction? get restriction => throw _privateConstructorUsedError;
  List<ExampleGroup>? get exampleGroups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranslationGroupCopyWith<TranslationGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationGroupCopyWith<$Res> {
  factory $TranslationGroupCopyWith(
          TranslationGroup value, $Res Function(TranslationGroup) then) =
      _$TranslationGroupCopyWithImpl<$Res>;
  $Res call(
      {List<Lemma> translationLemmas,
      Restriction? restriction,
      List<ExampleGroup>? exampleGroups});

  $RestrictionCopyWith<$Res>? get restriction;
}

/// @nodoc
class _$TranslationGroupCopyWithImpl<$Res>
    implements $TranslationGroupCopyWith<$Res> {
  _$TranslationGroupCopyWithImpl(this._value, this._then);

  final TranslationGroup _value;
  // ignore: unused_field
  final $Res Function(TranslationGroup) _then;

  @override
  $Res call({
    Object? translationLemmas = freezed,
    Object? restriction = freezed,
    Object? exampleGroups = freezed,
  }) {
    return _then(_value.copyWith(
      translationLemmas: translationLemmas == freezed
          ? _value.translationLemmas
          : translationLemmas // ignore: cast_nullable_to_non_nullable
              as List<Lemma>,
      restriction: restriction == freezed
          ? _value.restriction
          : restriction // ignore: cast_nullable_to_non_nullable
              as Restriction?,
      exampleGroups: exampleGroups == freezed
          ? _value.exampleGroups
          : exampleGroups // ignore: cast_nullable_to_non_nullable
              as List<ExampleGroup>?,
    ));
  }

  @override
  $RestrictionCopyWith<$Res>? get restriction {
    if (_value.restriction == null) {
      return null;
    }

    return $RestrictionCopyWith<$Res>(_value.restriction!, (value) {
      return _then(_value.copyWith(restriction: value));
    });
  }
}

/// @nodoc
abstract class _$$_TranslationGroupCopyWith<$Res>
    implements $TranslationGroupCopyWith<$Res> {
  factory _$$_TranslationGroupCopyWith(
          _$_TranslationGroup value, $Res Function(_$_TranslationGroup) then) =
      __$$_TranslationGroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Lemma> translationLemmas,
      Restriction? restriction,
      List<ExampleGroup>? exampleGroups});

  @override
  $RestrictionCopyWith<$Res>? get restriction;
}

/// @nodoc
class __$$_TranslationGroupCopyWithImpl<$Res>
    extends _$TranslationGroupCopyWithImpl<$Res>
    implements _$$_TranslationGroupCopyWith<$Res> {
  __$$_TranslationGroupCopyWithImpl(
      _$_TranslationGroup _value, $Res Function(_$_TranslationGroup) _then)
      : super(_value, (v) => _then(v as _$_TranslationGroup));

  @override
  _$_TranslationGroup get _value => super._value as _$_TranslationGroup;

  @override
  $Res call({
    Object? translationLemmas = freezed,
    Object? restriction = freezed,
    Object? exampleGroups = freezed,
  }) {
    return _then(_$_TranslationGroup(
      translationLemmas: translationLemmas == freezed
          ? _value._translationLemmas
          : translationLemmas // ignore: cast_nullable_to_non_nullable
              as List<Lemma>,
      restriction: restriction == freezed
          ? _value.restriction
          : restriction // ignore: cast_nullable_to_non_nullable
              as Restriction?,
      exampleGroups: exampleGroups == freezed
          ? _value._exampleGroups
          : exampleGroups // ignore: cast_nullable_to_non_nullable
              as List<ExampleGroup>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TranslationGroup implements _TranslationGroup {
  const _$_TranslationGroup(
      {required final List<Lemma> translationLemmas,
      this.restriction,
      final List<ExampleGroup>? exampleGroups})
      : _translationLemmas = translationLemmas,
        _exampleGroups = exampleGroups;

  factory _$_TranslationGroup.fromJson(Map<String, dynamic> json) =>
      _$$_TranslationGroupFromJson(json);

  final List<Lemma> _translationLemmas;
  @override
  List<Lemma> get translationLemmas {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_translationLemmas);
  }

  @override
  final Restriction? restriction;
  final List<ExampleGroup>? _exampleGroups;
  @override
  List<ExampleGroup>? get exampleGroups {
    final value = _exampleGroups;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TranslationGroup(translationLemmas: $translationLemmas, restriction: $restriction, exampleGroups: $exampleGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TranslationGroup &&
            const DeepCollectionEquality()
                .equals(other._translationLemmas, _translationLemmas) &&
            const DeepCollectionEquality()
                .equals(other.restriction, restriction) &&
            const DeepCollectionEquality()
                .equals(other._exampleGroups, _exampleGroups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_translationLemmas),
      const DeepCollectionEquality().hash(restriction),
      const DeepCollectionEquality().hash(_exampleGroups));

  @JsonKey(ignore: true)
  @override
  _$$_TranslationGroupCopyWith<_$_TranslationGroup> get copyWith =>
      __$$_TranslationGroupCopyWithImpl<_$_TranslationGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TranslationGroupToJson(
      this,
    );
  }
}

abstract class _TranslationGroup implements TranslationGroup {
  const factory _TranslationGroup(
      {required final List<Lemma> translationLemmas,
      final Restriction? restriction,
      final List<ExampleGroup>? exampleGroups}) = _$_TranslationGroup;

  factory _TranslationGroup.fromJson(Map<String, dynamic> json) =
      _$_TranslationGroup.fromJson;

  @override
  List<Lemma> get translationLemmas;
  @override
  Restriction? get restriction;
  @override
  List<ExampleGroup>? get exampleGroups;
  @override
  @JsonKey(ignore: true)
  _$$_TranslationGroupCopyWith<_$_TranslationGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
