// Project imports:
import 'models/models.dart';

abstract class SatniServiceInterface {
  Future<List<Article>> getArticles(
    String lookupString,
    List<String> srcLangs,
    List<String> targetLangs,
    List<String> wantedDicts,
  );

  Future<List<Stem>> getStems(
    String searchWord,
    String searchMode,
    List<String> srcLangs,
    List<String> targetLangs,
    List<String> wantedDicts,
  );
}
