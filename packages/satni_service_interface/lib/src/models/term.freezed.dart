// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'term.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Term _$TermFromJson(Map<String, dynamic> json) {
  return _Term.fromJson(json);
}

/// @nodoc
mixin _$Term {
  String? get status => throw _privateConstructorUsedError;
  bool get sanctioned => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  Lemma get expression => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TermCopyWith<Term> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermCopyWith<$Res> {
  factory $TermCopyWith(Term value, $Res Function(Term) then) =
      _$TermCopyWithImpl<$Res>;
  $Res call(
      {String? status,
      bool sanctioned,
      String? note,
      String? source,
      Lemma expression});

  $LemmaCopyWith<$Res> get expression;
}

/// @nodoc
class _$TermCopyWithImpl<$Res> implements $TermCopyWith<$Res> {
  _$TermCopyWithImpl(this._value, this._then);

  final Term _value;
  // ignore: unused_field
  final $Res Function(Term) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? sanctioned = freezed,
    Object? note = freezed,
    Object? source = freezed,
    Object? expression = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      sanctioned: sanctioned == freezed
          ? _value.sanctioned
          : sanctioned // ignore: cast_nullable_to_non_nullable
              as bool,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      expression: expression == freezed
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as Lemma,
    ));
  }

  @override
  $LemmaCopyWith<$Res> get expression {
    return $LemmaCopyWith<$Res>(_value.expression, (value) {
      return _then(_value.copyWith(expression: value));
    });
  }
}

/// @nodoc
abstract class _$$_TermCopyWith<$Res> implements $TermCopyWith<$Res> {
  factory _$$_TermCopyWith(_$_Term value, $Res Function(_$_Term) then) =
      __$$_TermCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? status,
      bool sanctioned,
      String? note,
      String? source,
      Lemma expression});

  @override
  $LemmaCopyWith<$Res> get expression;
}

/// @nodoc
class __$$_TermCopyWithImpl<$Res> extends _$TermCopyWithImpl<$Res>
    implements _$$_TermCopyWith<$Res> {
  __$$_TermCopyWithImpl(_$_Term _value, $Res Function(_$_Term) _then)
      : super(_value, (v) => _then(v as _$_Term));

  @override
  _$_Term get _value => super._value as _$_Term;

  @override
  $Res call({
    Object? status = freezed,
    Object? sanctioned = freezed,
    Object? note = freezed,
    Object? source = freezed,
    Object? expression = freezed,
  }) {
    return _then(_$_Term(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      sanctioned: sanctioned == freezed
          ? _value.sanctioned
          : sanctioned // ignore: cast_nullable_to_non_nullable
              as bool,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      expression: expression == freezed
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as Lemma,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Term implements _Term {
  const _$_Term(
      {this.status,
      required this.sanctioned,
      this.note,
      this.source,
      required this.expression});

  factory _$_Term.fromJson(Map<String, dynamic> json) => _$$_TermFromJson(json);

  @override
  final String? status;
  @override
  final bool sanctioned;
  @override
  final String? note;
  @override
  final String? source;
  @override
  final Lemma expression;

  @override
  String toString() {
    return 'Term(status: $status, sanctioned: $sanctioned, note: $note, source: $source, expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Term &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.sanctioned, sanctioned) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality()
                .equals(other.expression, expression));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(sanctioned),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(expression));

  @JsonKey(ignore: true)
  @override
  _$$_TermCopyWith<_$_Term> get copyWith =>
      __$$_TermCopyWithImpl<_$_Term>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TermToJson(
      this,
    );
  }
}

abstract class _Term implements Term {
  const factory _Term(
      {final String? status,
      required final bool sanctioned,
      final String? note,
      final String? source,
      required final Lemma expression}) = _$_Term;

  factory _Term.fromJson(Map<String, dynamic> json) = _$_Term.fromJson;

  @override
  String? get status;
  @override
  bool get sanctioned;
  @override
  String? get note;
  @override
  String? get source;
  @override
  Lemma get expression;
  @override
  @JsonKey(ignore: true)
  _$$_TermCopyWith<_$_Term> get copyWith => throw _privateConstructorUsedError;
}
