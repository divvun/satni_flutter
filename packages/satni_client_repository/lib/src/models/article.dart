// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'dict_entry.dart';
import 'multi_lang_concept.dart';

part 'article.freezed.dart';

@freezed
class Article with _$Article {
  const factory Article.term(MultiLangConcept mlc) = TermArticle;
  const factory Article.dict(DictEntry de) = DictArticle;
}
