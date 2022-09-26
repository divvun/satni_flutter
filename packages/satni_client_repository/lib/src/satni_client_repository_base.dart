// Project imports:
import 'models/models.dart';

enum SearchMode { start, middle, end }

abstract class SatniRepository {
  Future<List<Article>> getArticles(
    String lookupString,
    List<String> srcLangs,
    List<String> targetLangs,
    List<String> wantedDicts,
  );

  Future<List<Stem>> getStems(
    String searchWord,
    SearchMode searchMode,
    List<String> srcLangs,
    List<String> targetLangs,
    List<String> wantedDicts,
  );
}
