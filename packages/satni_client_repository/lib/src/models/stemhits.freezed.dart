// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stemhits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StemHits _$StemHitsFromJson(Map<String, dynamic> json) {
  return _StemHits.fromJson(json);
}

/// @nodoc
mixin _$StemHits {
  String get dictname => throw _privateConstructorUsedError;
  int get dicthits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StemHitsCopyWith<StemHits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StemHitsCopyWith<$Res> {
  factory $StemHitsCopyWith(StemHits value, $Res Function(StemHits) then) =
      _$StemHitsCopyWithImpl<$Res>;
  $Res call({String dictname, int dicthits});
}

/// @nodoc
class _$StemHitsCopyWithImpl<$Res> implements $StemHitsCopyWith<$Res> {
  _$StemHitsCopyWithImpl(this._value, this._then);

  final StemHits _value;
  // ignore: unused_field
  final $Res Function(StemHits) _then;

  @override
  $Res call({
    Object? dictname = freezed,
    Object? dicthits = freezed,
  }) {
    return _then(_value.copyWith(
      dictname: dictname == freezed
          ? _value.dictname
          : dictname // ignore: cast_nullable_to_non_nullable
              as String,
      dicthits: dicthits == freezed
          ? _value.dicthits
          : dicthits // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_StemHitsCopyWith<$Res> implements $StemHitsCopyWith<$Res> {
  factory _$$_StemHitsCopyWith(
          _$_StemHits value, $Res Function(_$_StemHits) then) =
      __$$_StemHitsCopyWithImpl<$Res>;
  @override
  $Res call({String dictname, int dicthits});
}

/// @nodoc
class __$$_StemHitsCopyWithImpl<$Res> extends _$StemHitsCopyWithImpl<$Res>
    implements _$$_StemHitsCopyWith<$Res> {
  __$$_StemHitsCopyWithImpl(
      _$_StemHits _value, $Res Function(_$_StemHits) _then)
      : super(_value, (v) => _then(v as _$_StemHits));

  @override
  _$_StemHits get _value => super._value as _$_StemHits;

  @override
  $Res call({
    Object? dictname = freezed,
    Object? dicthits = freezed,
  }) {
    return _then(_$_StemHits(
      dictname: dictname == freezed
          ? _value.dictname
          : dictname // ignore: cast_nullable_to_non_nullable
              as String,
      dicthits: dicthits == freezed
          ? _value.dicthits
          : dicthits // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StemHits implements _StemHits {
  const _$_StemHits({required this.dictname, this.dicthits = 0});

  factory _$_StemHits.fromJson(Map<String, dynamic> json) =>
      _$$_StemHitsFromJson(json);

  @override
  final String dictname;
  @override
  @JsonKey()
  final int dicthits;

  @override
  String toString() {
    return 'StemHits(dictname: $dictname, dicthits: $dicthits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StemHits &&
            const DeepCollectionEquality().equals(other.dictname, dictname) &&
            const DeepCollectionEquality().equals(other.dicthits, dicthits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dictname),
      const DeepCollectionEquality().hash(dicthits));

  @JsonKey(ignore: true)
  @override
  _$$_StemHitsCopyWith<_$_StemHits> get copyWith =>
      __$$_StemHitsCopyWithImpl<_$_StemHits>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StemHitsToJson(
      this,
    );
  }
}

abstract class _StemHits implements StemHits {
  const factory _StemHits(
      {required final String dictname, final int dicthits}) = _$_StemHits;

  factory _StemHits.fromJson(Map<String, dynamic> json) = _$_StemHits.fromJson;

  @override
  String get dictname;
  @override
  int get dicthits;
  @override
  @JsonKey(ignore: true)
  _$$_StemHitsCopyWith<_$_StemHits> get copyWith =>
      throw _privateConstructorUsedError;
}
