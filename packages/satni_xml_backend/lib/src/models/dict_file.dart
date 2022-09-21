import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xml/xml.dart';

part 'dict_file.freezed.dart';

@freezed
class DictFile with _$DictFile {
  const factory DictFile({
    required String vendor,
    required String id,
    required String srcLang,
    required String targetLang,
    required String filePath,
    required XmlDocument xmlDocument,
  }) = _DictFile;
}
