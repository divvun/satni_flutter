// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dict_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DictEntry _$DictEntryFromJson(Map<String, dynamic> json) {
  return _DictEntry.fromJson(json);
}

/// @nodoc
mixin _$DictEntry {
  String get dictName => throw _privateConstructorUsedError;
  String get srcLang => throw _privateConstructorUsedError;
  String get targetLang => throw _privateConstructorUsedError;
  List<Lemma> get lookupLemmas => throw _privateConstructorUsedError;
  List<TranslationGroup> get translationGroups =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictEntryCopyWith<DictEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictEntryCopyWith<$Res> {
  factory $DictEntryCopyWith(DictEntry value, $Res Function(DictEntry) then) =
      _$DictEntryCopyWithImpl<$Res>;
  $Res call(
      {String dictName,
      String srcLang,
      String targetLang,
      List<Lemma> lookupLemmas,
      List<TranslationGroup> translationGroups});
}

/// @nodoc
class _$DictEntryCopyWithImpl<$Res> implements $DictEntryCopyWith<$Res> {
  _$DictEntryCopyWithImpl(this._value, this._then);

  final DictEntry _value;
  // ignore: unused_field
  final $Res Function(DictEntry) _then;

  @override
  $Res call({
    Object? dictName = freezed,
    Object? srcLang = freezed,
    Object? targetLang = freezed,
    Object? lookupLemmas = freezed,
    Object? translationGroups = freezed,
  }) {
    return _then(_value.copyWith(
      dictName: dictName == freezed
          ? _value.dictName
          : dictName // ignore: cast_nullable_to_non_nullable
              as String,
      srcLang: srcLang == freezed
          ? _value.srcLang
          : srcLang // ignore: cast_nullable_to_non_nullable
              as String,
      targetLang: targetLang == freezed
          ? _value.targetLang
          : targetLang // ignore: cast_nullable_to_non_nullable
              as String,
      lookupLemmas: lookupLemmas == freezed
          ? _value.lookupLemmas
          : lookupLemmas // ignore: cast_nullable_to_non_nullable
              as List<Lemma>,
      translationGroups: translationGroups == freezed
          ? _value.translationGroups
          : translationGroups // ignore: cast_nullable_to_non_nullable
              as List<TranslationGroup>,
    ));
  }
}

/// @nodoc
abstract class _$$_DictEntryCopyWith<$Res> implements $DictEntryCopyWith<$Res> {
  factory _$$_DictEntryCopyWith(
          _$_DictEntry value, $Res Function(_$_DictEntry) then) =
      __$$_DictEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String dictName,
      String srcLang,
      String targetLang,
      List<Lemma> lookupLemmas,
      List<TranslationGroup> translationGroups});
}

/// @nodoc
class __$$_DictEntryCopyWithImpl<$Res> extends _$DictEntryCopyWithImpl<$Res>
    implements _$$_DictEntryCopyWith<$Res> {
  __$$_DictEntryCopyWithImpl(
      _$_DictEntry _value, $Res Function(_$_DictEntry) _then)
      : super(_value, (v) => _then(v as _$_DictEntry));

  @override
  _$_DictEntry get _value => super._value as _$_DictEntry;

  @override
  $Res call({
    Object? dictName = freezed,
    Object? srcLang = freezed,
    Object? targetLang = freezed,
    Object? lookupLemmas = freezed,
    Object? translationGroups = freezed,
  }) {
    return _then(_$_DictEntry(
      dictName: dictName == freezed
          ? _value.dictName
          : dictName // ignore: cast_nullable_to_non_nullable
              as String,
      srcLang: srcLang == freezed
          ? _value.srcLang
          : srcLang // ignore: cast_nullable_to_non_nullable
              as String,
      targetLang: targetLang == freezed
          ? _value.targetLang
          : targetLang // ignore: cast_nullable_to_non_nullable
              as String,
      lookupLemmas: lookupLemmas == freezed
          ? _value._lookupLemmas
          : lookupLemmas // ignore: cast_nullable_to_non_nullable
              as List<Lemma>,
      translationGroups: translationGroups == freezed
          ? _value._translationGroups
          : translationGroups // ignore: cast_nullable_to_non_nullable
              as List<TranslationGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DictEntry implements _DictEntry {
  const _$_DictEntry(
      {required this.dictName,
      required this.srcLang,
      required this.targetLang,
      required final List<Lemma> lookupLemmas,
      required final List<TranslationGroup> translationGroups})
      : _lookupLemmas = lookupLemmas,
        _translationGroups = translationGroups;

  factory _$_DictEntry.fromJson(Map<String, dynamic> json) =>
      _$$_DictEntryFromJson(json);

  @override
  final String dictName;
  @override
  final String srcLang;
  @override
  final String targetLang;
  final List<Lemma> _lookupLemmas;
  @override
  List<Lemma> get lookupLemmas {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lookupLemmas);
  }

  final List<TranslationGroup> _translationGroups;
  @override
  List<TranslationGroup> get translationGroups {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_translationGroups);
  }

  @override
  String toString() {
    return 'DictEntry(dictName: $dictName, srcLang: $srcLang, targetLang: $targetLang, lookupLemmas: $lookupLemmas, translationGroups: $translationGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DictEntry &&
            const DeepCollectionEquality().equals(other.dictName, dictName) &&
            const DeepCollectionEquality().equals(other.srcLang, srcLang) &&
            const DeepCollectionEquality()
                .equals(other.targetLang, targetLang) &&
            const DeepCollectionEquality()
                .equals(other._lookupLemmas, _lookupLemmas) &&
            const DeepCollectionEquality()
                .equals(other._translationGroups, _translationGroups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dictName),
      const DeepCollectionEquality().hash(srcLang),
      const DeepCollectionEquality().hash(targetLang),
      const DeepCollectionEquality().hash(_lookupLemmas),
      const DeepCollectionEquality().hash(_translationGroups));

  @JsonKey(ignore: true)
  @override
  _$$_DictEntryCopyWith<_$_DictEntry> get copyWith =>
      __$$_DictEntryCopyWithImpl<_$_DictEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DictEntryToJson(
      this,
    );
  }
}

abstract class _DictEntry implements DictEntry {
  const factory _DictEntry(
      {required final String dictName,
      required final String srcLang,
      required final String targetLang,
      required final List<Lemma> lookupLemmas,
      required final List<TranslationGroup> translationGroups}) = _$_DictEntry;

  factory _DictEntry.fromJson(Map<String, dynamic> json) =
      _$_DictEntry.fromJson;

  @override
  String get dictName;
  @override
  String get srcLang;
  @override
  String get targetLang;
  @override
  List<Lemma> get lookupLemmas;
  @override
  List<TranslationGroup> get translationGroups;
  @override
  @JsonKey(ignore: true)
  _$$_DictEntryCopyWith<_$_DictEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
