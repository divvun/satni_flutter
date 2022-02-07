// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchTearOff {
  const _$SearchTearOff();

  _Search call({String searchText = '', String searchMode = 'start'}) {
    return _Search(
      searchText: searchText,
      searchMode: searchMode,
    );
  }
}

/// @nodoc
const $Search = _$SearchTearOff();

/// @nodoc
mixin _$Search {
  String get searchText => throw _privateConstructorUsedError;
  String get searchMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchCopyWith<Search> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCopyWith<$Res> {
  factory $SearchCopyWith(Search value, $Res Function(Search) then) =
      _$SearchCopyWithImpl<$Res>;
  $Res call({String searchText, String searchMode});
}

/// @nodoc
class _$SearchCopyWithImpl<$Res> implements $SearchCopyWith<$Res> {
  _$SearchCopyWithImpl(this._value, this._then);

  final Search _value;
  // ignore: unused_field
  final $Res Function(Search) _then;

  @override
  $Res call({
    Object? searchText = freezed,
    Object? searchMode = freezed,
  }) {
    return _then(_value.copyWith(
      searchText: searchText == freezed
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      searchMode: searchMode == freezed
          ? _value.searchMode
          : searchMode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchCopyWith<$Res> implements $SearchCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) then) =
      __$SearchCopyWithImpl<$Res>;
  @override
  $Res call({String searchText, String searchMode});
}

/// @nodoc
class __$SearchCopyWithImpl<$Res> extends _$SearchCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(_Search _value, $Res Function(_Search) _then)
      : super(_value, (v) => _then(v as _Search));

  @override
  _Search get _value => super._value as _Search;

  @override
  $Res call({
    Object? searchText = freezed,
    Object? searchMode = freezed,
  }) {
    return _then(_Search(
      searchText: searchText == freezed
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      searchMode: searchMode == freezed
          ? _value.searchMode
          : searchMode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Search with DiagnosticableTreeMixin implements _Search {
  _$_Search({this.searchText = '', this.searchMode = 'start'});

  @JsonKey()
  @override
  final String searchText;
  @JsonKey()
  @override
  final String searchMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Search(searchText: $searchText, searchMode: $searchMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Search'))
      ..add(DiagnosticsProperty('searchText', searchText))
      ..add(DiagnosticsProperty('searchMode', searchMode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Search &&
            const DeepCollectionEquality()
                .equals(other.searchText, searchText) &&
            const DeepCollectionEquality()
                .equals(other.searchMode, searchMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchText),
      const DeepCollectionEquality().hash(searchMode));

  @JsonKey(ignore: true)
  @override
  _$SearchCopyWith<_Search> get copyWith =>
      __$SearchCopyWithImpl<_Search>(this, _$identity);
}

abstract class _Search implements Search {
  factory _Search({String searchText, String searchMode}) = _$_Search;

  @override
  String get searchText;
  @override
  String get searchMode;
  @override
  @JsonKey(ignore: true)
  _$SearchCopyWith<_Search> get copyWith => throw _privateConstructorUsedError;
}
