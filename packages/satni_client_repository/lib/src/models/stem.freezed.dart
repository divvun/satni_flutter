// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Stem _$StemFromJson(Map<String, dynamic> json) {
  return _Stem.fromJson(json);
}

/// @nodoc
mixin _$Stem {
  String get stem => throw _privateConstructorUsedError;
  String get searchStem => throw _privateConstructorUsedError;
  String get srclang => throw _privateConstructorUsedError;
  List<String> get targetlangs => throw _privateConstructorUsedError;
  List<StemHits> get dicts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StemCopyWith<Stem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StemCopyWith<$Res> {
  factory $StemCopyWith(Stem value, $Res Function(Stem) then) =
      _$StemCopyWithImpl<$Res>;
  $Res call(
      {String stem,
      String searchStem,
      String srclang,
      List<String> targetlangs,
      List<StemHits> dicts});
}

/// @nodoc
class _$StemCopyWithImpl<$Res> implements $StemCopyWith<$Res> {
  _$StemCopyWithImpl(this._value, this._then);

  final Stem _value;
  // ignore: unused_field
  final $Res Function(Stem) _then;

  @override
  $Res call({
    Object? stem = freezed,
    Object? searchStem = freezed,
    Object? srclang = freezed,
    Object? targetlangs = freezed,
    Object? dicts = freezed,
  }) {
    return _then(_value.copyWith(
      stem: stem == freezed
          ? _value.stem
          : stem // ignore: cast_nullable_to_non_nullable
              as String,
      searchStem: searchStem == freezed
          ? _value.searchStem
          : searchStem // ignore: cast_nullable_to_non_nullable
              as String,
      srclang: srclang == freezed
          ? _value.srclang
          : srclang // ignore: cast_nullable_to_non_nullable
              as String,
      targetlangs: targetlangs == freezed
          ? _value.targetlangs
          : targetlangs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dicts: dicts == freezed
          ? _value.dicts
          : dicts // ignore: cast_nullable_to_non_nullable
              as List<StemHits>,
    ));
  }
}

/// @nodoc
abstract class _$$_StemCopyWith<$Res> implements $StemCopyWith<$Res> {
  factory _$$_StemCopyWith(_$_Stem value, $Res Function(_$_Stem) then) =
      __$$_StemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String stem,
      String searchStem,
      String srclang,
      List<String> targetlangs,
      List<StemHits> dicts});
}

/// @nodoc
class __$$_StemCopyWithImpl<$Res> extends _$StemCopyWithImpl<$Res>
    implements _$$_StemCopyWith<$Res> {
  __$$_StemCopyWithImpl(_$_Stem _value, $Res Function(_$_Stem) _then)
      : super(_value, (v) => _then(v as _$_Stem));

  @override
  _$_Stem get _value => super._value as _$_Stem;

  @override
  $Res call({
    Object? stem = freezed,
    Object? searchStem = freezed,
    Object? srclang = freezed,
    Object? targetlangs = freezed,
    Object? dicts = freezed,
  }) {
    return _then(_$_Stem(
      stem: stem == freezed
          ? _value.stem
          : stem // ignore: cast_nullable_to_non_nullable
              as String,
      searchStem: searchStem == freezed
          ? _value.searchStem
          : searchStem // ignore: cast_nullable_to_non_nullable
              as String,
      srclang: srclang == freezed
          ? _value.srclang
          : srclang // ignore: cast_nullable_to_non_nullable
              as String,
      targetlangs: targetlangs == freezed
          ? _value._targetlangs
          : targetlangs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dicts: dicts == freezed
          ? _value._dicts
          : dicts // ignore: cast_nullable_to_non_nullable
              as List<StemHits>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stem implements _Stem {
  const _$_Stem(
      {required this.stem,
      required this.searchStem,
      required this.srclang,
      required final List<String> targetlangs,
      final List<StemHits> dicts = const []})
      : _targetlangs = targetlangs,
        _dicts = dicts;

  factory _$_Stem.fromJson(Map<String, dynamic> json) => _$$_StemFromJson(json);

  @override
  final String stem;
  @override
  final String searchStem;
  @override
  final String srclang;
  final List<String> _targetlangs;
  @override
  List<String> get targetlangs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_targetlangs);
  }

  final List<StemHits> _dicts;
  @override
  @JsonKey()
  List<StemHits> get dicts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dicts);
  }

  @override
  String toString() {
    return 'Stem(stem: $stem, searchStem: $searchStem, srclang: $srclang, targetlangs: $targetlangs, dicts: $dicts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stem &&
            const DeepCollectionEquality().equals(other.stem, stem) &&
            const DeepCollectionEquality()
                .equals(other.searchStem, searchStem) &&
            const DeepCollectionEquality().equals(other.srclang, srclang) &&
            const DeepCollectionEquality()
                .equals(other._targetlangs, _targetlangs) &&
            const DeepCollectionEquality().equals(other._dicts, _dicts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stem),
      const DeepCollectionEquality().hash(searchStem),
      const DeepCollectionEquality().hash(srclang),
      const DeepCollectionEquality().hash(_targetlangs),
      const DeepCollectionEquality().hash(_dicts));

  @JsonKey(ignore: true)
  @override
  _$$_StemCopyWith<_$_Stem> get copyWith =>
      __$$_StemCopyWithImpl<_$_Stem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StemToJson(
      this,
    );
  }
}

abstract class _Stem implements Stem {
  const factory _Stem(
      {required final String stem,
      required final String searchStem,
      required final String srclang,
      required final List<String> targetlangs,
      final List<StemHits> dicts}) = _$_Stem;

  factory _Stem.fromJson(Map<String, dynamic> json) = _$_Stem.fromJson;

  @override
  String get stem;
  @override
  String get searchStem;
  @override
  String get srclang;
  @override
  List<String> get targetlangs;
  @override
  List<StemHits> get dicts;
  @override
  @JsonKey(ignore: true)
  _$$_StemCopyWith<_$_Stem> get copyWith => throw _privateConstructorUsedError;
}
