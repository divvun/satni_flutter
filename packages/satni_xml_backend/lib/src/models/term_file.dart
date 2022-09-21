// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xml/xml.dart';

part 'term_file.freezed.dart';

@freezed
class TermFile with _$TermFile {
  const factory TermFile({
    required String vendor,
    required List<String> languages,
    required XmlDocument terms,
  }) = _TermFile;
}
