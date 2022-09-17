// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Article {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MultiLangConcept mlc) term,
    required TResult Function(DictEntry de) dict,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MultiLangConcept mlc)? term,
    TResult Function(DictEntry de)? dict,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MultiLangConcept mlc)? term,
    TResult Function(DictEntry de)? dict,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TermArticle value) term,
    required TResult Function(DictArticle value) dict,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TermArticle value)? term,
    TResult Function(DictArticle value)? dict,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TermArticle value)? term,
    TResult Function(DictArticle value)? dict,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res> implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  final Article _value;
  // ignore: unused_field
  final $Res Function(Article) _then;
}

/// @nodoc
abstract class _$$TermArticleCopyWith<$Res> {
  factory _$$TermArticleCopyWith(
          _$TermArticle value, $Res Function(_$TermArticle) then) =
      __$$TermArticleCopyWithImpl<$Res>;
  $Res call({MultiLangConcept mlc});

  $MultiLangConceptCopyWith<$Res> get mlc;
}

/// @nodoc
class __$$TermArticleCopyWithImpl<$Res> extends _$ArticleCopyWithImpl<$Res>
    implements _$$TermArticleCopyWith<$Res> {
  __$$TermArticleCopyWithImpl(
      _$TermArticle _value, $Res Function(_$TermArticle) _then)
      : super(_value, (v) => _then(v as _$TermArticle));

  @override
  _$TermArticle get _value => super._value as _$TermArticle;

  @override
  $Res call({
    Object? mlc = freezed,
  }) {
    return _then(_$TermArticle(
      mlc == freezed
          ? _value.mlc
          : mlc // ignore: cast_nullable_to_non_nullable
              as MultiLangConcept,
    ));
  }

  @override
  $MultiLangConceptCopyWith<$Res> get mlc {
    return $MultiLangConceptCopyWith<$Res>(_value.mlc, (value) {
      return _then(_value.copyWith(mlc: value));
    });
  }
}

/// @nodoc

class _$TermArticle implements TermArticle {
  const _$TermArticle(this.mlc);

  @override
  final MultiLangConcept mlc;

  @override
  String toString() {
    return 'Article.term(mlc: $mlc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermArticle &&
            const DeepCollectionEquality().equals(other.mlc, mlc));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(mlc));

  @JsonKey(ignore: true)
  @override
  _$$TermArticleCopyWith<_$TermArticle> get copyWith =>
      __$$TermArticleCopyWithImpl<_$TermArticle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MultiLangConcept mlc) term,
    required TResult Function(DictEntry de) dict,
  }) {
    return term(mlc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MultiLangConcept mlc)? term,
    TResult Function(DictEntry de)? dict,
  }) {
    return term?.call(mlc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MultiLangConcept mlc)? term,
    TResult Function(DictEntry de)? dict,
    required TResult orElse(),
  }) {
    if (term != null) {
      return term(mlc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TermArticle value) term,
    required TResult Function(DictArticle value) dict,
  }) {
    return term(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TermArticle value)? term,
    TResult Function(DictArticle value)? dict,
  }) {
    return term?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TermArticle value)? term,
    TResult Function(DictArticle value)? dict,
    required TResult orElse(),
  }) {
    if (term != null) {
      return term(this);
    }
    return orElse();
  }
}

abstract class TermArticle implements Article {
  const factory TermArticle(final MultiLangConcept mlc) = _$TermArticle;

  MultiLangConcept get mlc;
  @JsonKey(ignore: true)
  _$$TermArticleCopyWith<_$TermArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DictArticleCopyWith<$Res> {
  factory _$$DictArticleCopyWith(
          _$DictArticle value, $Res Function(_$DictArticle) then) =
      __$$DictArticleCopyWithImpl<$Res>;
  $Res call({DictEntry de});

  $DictEntryCopyWith<$Res> get de;
}

/// @nodoc
class __$$DictArticleCopyWithImpl<$Res> extends _$ArticleCopyWithImpl<$Res>
    implements _$$DictArticleCopyWith<$Res> {
  __$$DictArticleCopyWithImpl(
      _$DictArticle _value, $Res Function(_$DictArticle) _then)
      : super(_value, (v) => _then(v as _$DictArticle));

  @override
  _$DictArticle get _value => super._value as _$DictArticle;

  @override
  $Res call({
    Object? de = freezed,
  }) {
    return _then(_$DictArticle(
      de == freezed
          ? _value.de
          : de // ignore: cast_nullable_to_non_nullable
              as DictEntry,
    ));
  }

  @override
  $DictEntryCopyWith<$Res> get de {
    return $DictEntryCopyWith<$Res>(_value.de, (value) {
      return _then(_value.copyWith(de: value));
    });
  }
}

/// @nodoc

class _$DictArticle implements DictArticle {
  const _$DictArticle(this.de);

  @override
  final DictEntry de;

  @override
  String toString() {
    return 'Article.dict(de: $de)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictArticle &&
            const DeepCollectionEquality().equals(other.de, de));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(de));

  @JsonKey(ignore: true)
  @override
  _$$DictArticleCopyWith<_$DictArticle> get copyWith =>
      __$$DictArticleCopyWithImpl<_$DictArticle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MultiLangConcept mlc) term,
    required TResult Function(DictEntry de) dict,
  }) {
    return dict(de);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MultiLangConcept mlc)? term,
    TResult Function(DictEntry de)? dict,
  }) {
    return dict?.call(de);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MultiLangConcept mlc)? term,
    TResult Function(DictEntry de)? dict,
    required TResult orElse(),
  }) {
    if (dict != null) {
      return dict(de);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TermArticle value) term,
    required TResult Function(DictArticle value) dict,
  }) {
    return dict(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TermArticle value)? term,
    TResult Function(DictArticle value)? dict,
  }) {
    return dict?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TermArticle value)? term,
    TResult Function(DictArticle value)? dict,
    required TResult orElse(),
  }) {
    if (dict != null) {
      return dict(this);
    }
    return orElse();
  }
}

abstract class DictArticle implements Article {
  const factory DictArticle(final DictEntry de) = _$DictArticle;

  DictEntry get de;
  @JsonKey(ignore: true)
  _$$DictArticleCopyWith<_$DictArticle> get copyWith =>
      throw _privateConstructorUsedError;
}
