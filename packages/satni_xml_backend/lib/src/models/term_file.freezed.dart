// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'term_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TermFile {
  String get vendor => throw _privateConstructorUsedError;
  List<String> get languages => throw _privateConstructorUsedError;
  XmlDocument get terms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TermFileCopyWith<TermFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermFileCopyWith<$Res> {
  factory $TermFileCopyWith(TermFile value, $Res Function(TermFile) then) =
      _$TermFileCopyWithImpl<$Res>;
  $Res call({String vendor, List<String> languages, XmlDocument terms});
}

/// @nodoc
class _$TermFileCopyWithImpl<$Res> implements $TermFileCopyWith<$Res> {
  _$TermFileCopyWithImpl(this._value, this._then);

  final TermFile _value;
  // ignore: unused_field
  final $Res Function(TermFile) _then;

  @override
  $Res call({
    Object? vendor = freezed,
    Object? languages = freezed,
    Object? terms = freezed,
  }) {
    return _then(_value.copyWith(
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String,
      languages: languages == freezed
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      terms: terms == freezed
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as XmlDocument,
    ));
  }
}

/// @nodoc
abstract class _$$_TermFileCopyWith<$Res> implements $TermFileCopyWith<$Res> {
  factory _$$_TermFileCopyWith(
          _$_TermFile value, $Res Function(_$_TermFile) then) =
      __$$_TermFileCopyWithImpl<$Res>;
  @override
  $Res call({String vendor, List<String> languages, XmlDocument terms});
}

/// @nodoc
class __$$_TermFileCopyWithImpl<$Res> extends _$TermFileCopyWithImpl<$Res>
    implements _$$_TermFileCopyWith<$Res> {
  __$$_TermFileCopyWithImpl(
      _$_TermFile _value, $Res Function(_$_TermFile) _then)
      : super(_value, (v) => _then(v as _$_TermFile));

  @override
  _$_TermFile get _value => super._value as _$_TermFile;

  @override
  $Res call({
    Object? vendor = freezed,
    Object? languages = freezed,
    Object? terms = freezed,
  }) {
    return _then(_$_TermFile(
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String,
      languages: languages == freezed
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      terms: terms == freezed
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as XmlDocument,
    ));
  }
}

/// @nodoc

class _$_TermFile implements _TermFile {
  const _$_TermFile(
      {required this.vendor,
      required final List<String> languages,
      required this.terms})
      : _languages = languages;

  @override
  final String vendor;
  final List<String> _languages;
  @override
  List<String> get languages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  @override
  final XmlDocument terms;

  @override
  String toString() {
    return 'TermFile(vendor: $vendor, languages: $languages, terms: $terms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TermFile &&
            const DeepCollectionEquality().equals(other.vendor, vendor) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality().equals(other.terms, terms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(vendor),
      const DeepCollectionEquality().hash(_languages),
      const DeepCollectionEquality().hash(terms));

  @JsonKey(ignore: true)
  @override
  _$$_TermFileCopyWith<_$_TermFile> get copyWith =>
      __$$_TermFileCopyWithImpl<_$_TermFile>(this, _$identity);
}

abstract class _TermFile implements TermFile {
  const factory _TermFile(
      {required final String vendor,
      required final List<String> languages,
      required final XmlDocument terms}) = _$_TermFile;

  @override
  String get vendor;
  @override
  List<String> get languages;
  @override
  XmlDocument get terms;
  @override
  @JsonKey(ignore: true)
  _$$_TermFileCopyWith<_$_TermFile> get copyWith =>
      throw _privateConstructorUsedError;
}
