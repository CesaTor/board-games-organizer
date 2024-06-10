import 'package:bgo/src/core/core.dart';
import 'package:isar/isar.dart';

class GetFilteredGames {
  Future<Iterable<BoardGameDbEntry>> call(String query) async {
    return (await isar.boardGameDbEntrys
        .where()
        .filter()
        .nameContains(query)
        .or()
        .descriptionContains(query)
        .findAll());
  }
}
