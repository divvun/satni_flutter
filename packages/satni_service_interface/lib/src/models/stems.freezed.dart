// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stems.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Stems _$StemsFromJson(Map<String, dynamic> json) {
  return _Stems.fromJson(json);
}

/// @nodoc
mixin _$Stems {
  List<Stem> get stemList => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StemsCopyWith<Stems> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StemsCopyWith<$Res> {
  factory $StemsCopyWith(Stems value, $Res Function(Stems) then) =
      _$StemsCopyWithImpl<$Res>;
  $Res call({List<Stem> stemList, bool hasNextPage, int totalCount});
}

/// @nodoc
class _$StemsCopyWithImpl<$Res> implements $StemsCopyWith<$Res> {
  _$StemsCopyWithImpl(this._value, this._then);

  final Stems _value;
  // ignore: unused_field
  final $Res Function(Stems) _then;

  @override
  $Res call({
    Object? stemList = freezed,
    Object? hasNextPage = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_value.copyWith(
      stemList: stemList == freezed
          ? _value.stemList
          : stemList // ignore: cast_nullable_to_non_nullable
              as List<Stem>,
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_StemsCopyWith<$Res> implements $StemsCopyWith<$Res> {
  factory _$$_StemsCopyWith(_$_Stems value, $Res Function(_$_Stems) then) =
      __$$_StemsCopyWithImpl<$Res>;
  @override
  $Res call({List<Stem> stemList, bool hasNextPage, int totalCount});
}

/// @nodoc
class __$$_StemsCopyWithImpl<$Res> extends _$StemsCopyWithImpl<$Res>
    implements _$$_StemsCopyWith<$Res> {
  __$$_StemsCopyWithImpl(_$_Stems _value, $Res Function(_$_Stems) _then)
      : super(_value, (v) => _then(v as _$_Stems));

  @override
  _$_Stems get _value => super._value as _$_Stems;

  @override
  $Res call({
    Object? stemList = freezed,
    Object? hasNextPage = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_$_Stems(
      stemList: stemList == freezed
          ? _value._stemList
          : stemList // ignore: cast_nullable_to_non_nullable
              as List<Stem>,
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stems implements _Stems {
  const _$_Stems(
      {final List<Stem> stemList = const <Stem>[],
      this.hasNextPage = false,
      this.totalCount = 0})
      : _stemList = stemList;

  factory _$_Stems.fromJson(Map<String, dynamic> json) =>
      _$$_StemsFromJson(json);

  final List<Stem> _stemList;
  @override
  @JsonKey()
  List<Stem> get stemList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stemList);
  }

  @override
  @JsonKey()
  final bool hasNextPage;
  @override
  @JsonKey()
  final int totalCount;

  @override
  String toString() {
    return 'Stems(stemList: $stemList, hasNextPage: $hasNextPage, totalCount: $totalCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stems &&
            const DeepCollectionEquality().equals(other._stemList, _stemList) &&
            const DeepCollectionEquality()
                .equals(other.hasNextPage, hasNextPage) &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stemList),
      const DeepCollectionEquality().hash(hasNextPage),
      const DeepCollectionEquality().hash(totalCount));

  @JsonKey(ignore: true)
  @override
  _$$_StemsCopyWith<_$_Stems> get copyWith =>
      __$$_StemsCopyWithImpl<_$_Stems>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StemsToJson(
      this,
    );
  }
}

abstract class _Stems implements Stems {
  const factory _Stems(
      {final List<Stem> stemList,
      final bool hasNextPage,
      final int totalCount}) = _$_Stems;

  factory _Stems.fromJson(Map<String, dynamic> json) = _$_Stems.fromJson;

  @override
  List<Stem> get stemList;
  @override
  bool get hasNextPage;
  @override
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$_StemsCopyWith<_$_Stems> get copyWith =>
      throw _privateConstructorUsedError;
}
