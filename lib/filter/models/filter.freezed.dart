// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilterTearOff {
  const _$FilterTearOff();

  _Filter call(
      {List<String> wantedSrcLangs = const [
        'eng',
        'fin',
        'lat',
        'nno',
        'nob',
        'sma',
        'sme',
        'smn',
        'sms',
        'swe'
      ],
      List<String> wantedTargetLangs = const [
        'eng',
        'fin',
        'lat',
        'nno',
        'nob',
        'sma',
        'sme',
        'smn',
        'sms',
        'swe'
      ],
      List<String> wantedDicts = const [
        'termwiki',
        'gtsmenob',
        'gtnobsme',
        'gtnobsma',
        'gtsmanob',
        'gtsmefin',
        'gtfinsme',
        'gtsmesmn',
        'gtsmnsme',
        'gtfinsmn',
        'gtsmnfin',
        'gtfinnob',
        'sammallahtismefin'
      ]}) {
    return _Filter(
      wantedSrcLangs: wantedSrcLangs,
      wantedTargetLangs: wantedTargetLangs,
      wantedDicts: wantedDicts,
    );
  }
}

/// @nodoc
const $Filter = _$FilterTearOff();

/// @nodoc
mixin _$Filter {
  List<String> get wantedSrcLangs => throw _privateConstructorUsedError;
  List<String> get wantedTargetLangs => throw _privateConstructorUsedError;
  List<String> get wantedDicts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterCopyWith<Filter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCopyWith<$Res> {
  factory $FilterCopyWith(Filter value, $Res Function(Filter) then) =
      _$FilterCopyWithImpl<$Res>;
  $Res call(
      {List<String> wantedSrcLangs,
      List<String> wantedTargetLangs,
      List<String> wantedDicts});
}

/// @nodoc
class _$FilterCopyWithImpl<$Res> implements $FilterCopyWith<$Res> {
  _$FilterCopyWithImpl(this._value, this._then);

  final Filter _value;
  // ignore: unused_field
  final $Res Function(Filter) _then;

  @override
  $Res call({
    Object? wantedSrcLangs = freezed,
    Object? wantedTargetLangs = freezed,
    Object? wantedDicts = freezed,
  }) {
    return _then(_value.copyWith(
      wantedSrcLangs: wantedSrcLangs == freezed
          ? _value.wantedSrcLangs
          : wantedSrcLangs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      wantedTargetLangs: wantedTargetLangs == freezed
          ? _value.wantedTargetLangs
          : wantedTargetLangs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      wantedDicts: wantedDicts == freezed
          ? _value.wantedDicts
          : wantedDicts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$FilterCopyWith<$Res> implements $FilterCopyWith<$Res> {
  factory _$FilterCopyWith(_Filter value, $Res Function(_Filter) then) =
      __$FilterCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> wantedSrcLangs,
      List<String> wantedTargetLangs,
      List<String> wantedDicts});
}

/// @nodoc
class __$FilterCopyWithImpl<$Res> extends _$FilterCopyWithImpl<$Res>
    implements _$FilterCopyWith<$Res> {
  __$FilterCopyWithImpl(_Filter _value, $Res Function(_Filter) _then)
      : super(_value, (v) => _then(v as _Filter));

  @override
  _Filter get _value => super._value as _Filter;

  @override
  $Res call({
    Object? wantedSrcLangs = freezed,
    Object? wantedTargetLangs = freezed,
    Object? wantedDicts = freezed,
  }) {
    return _then(_Filter(
      wantedSrcLangs: wantedSrcLangs == freezed
          ? _value.wantedSrcLangs
          : wantedSrcLangs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      wantedTargetLangs: wantedTargetLangs == freezed
          ? _value.wantedTargetLangs
          : wantedTargetLangs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      wantedDicts: wantedDicts == freezed
          ? _value.wantedDicts
          : wantedDicts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Filter with DiagnosticableTreeMixin implements _Filter {
  _$_Filter(
      {this.wantedSrcLangs = const [
        'eng',
        'fin',
        'lat',
        'nno',
        'nob',
        'sma',
        'sme',
        'smn',
        'sms',
        'swe'
      ],
      this.wantedTargetLangs = const [
        'eng',
        'fin',
        'lat',
        'nno',
        'nob',
        'sma',
        'sme',
        'smn',
        'sms',
        'swe'
      ],
      this.wantedDicts = const [
        'termwiki',
        'gtsmenob',
        'gtnobsme',
        'gtnobsma',
        'gtsmanob',
        'gtsmefin',
        'gtfinsme',
        'gtsmesmn',
        'gtsmnsme',
        'gtfinsmn',
        'gtsmnfin',
        'gtfinnob',
        'sammallahtismefin'
      ]});

  @JsonKey()
  @override
  final List<String> wantedSrcLangs;
  @JsonKey()
  @override
  final List<String> wantedTargetLangs;
  @JsonKey()
  @override
  final List<String> wantedDicts;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Filter(wantedSrcLangs: $wantedSrcLangs, wantedTargetLangs: $wantedTargetLangs, wantedDicts: $wantedDicts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Filter'))
      ..add(DiagnosticsProperty('wantedSrcLangs', wantedSrcLangs))
      ..add(DiagnosticsProperty('wantedTargetLangs', wantedTargetLangs))
      ..add(DiagnosticsProperty('wantedDicts', wantedDicts));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Filter &&
            const DeepCollectionEquality()
                .equals(other.wantedSrcLangs, wantedSrcLangs) &&
            const DeepCollectionEquality()
                .equals(other.wantedTargetLangs, wantedTargetLangs) &&
            const DeepCollectionEquality()
                .equals(other.wantedDicts, wantedDicts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(wantedSrcLangs),
      const DeepCollectionEquality().hash(wantedTargetLangs),
      const DeepCollectionEquality().hash(wantedDicts));

  @JsonKey(ignore: true)
  @override
  _$FilterCopyWith<_Filter> get copyWith =>
      __$FilterCopyWithImpl<_Filter>(this, _$identity);
}

abstract class _Filter implements Filter {
  factory _Filter(
      {List<String> wantedSrcLangs,
      List<String> wantedTargetLangs,
      List<String> wantedDicts}) = _$_Filter;

  @override
  List<String> get wantedSrcLangs;
  @override
  List<String> get wantedTargetLangs;
  @override
  List<String> get wantedDicts;
  @override
  @JsonKey(ignore: true)
  _$FilterCopyWith<_Filter> get copyWith => throw _privateConstructorUsedError;
}
