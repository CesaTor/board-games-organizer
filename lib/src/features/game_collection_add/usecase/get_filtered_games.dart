import 'package:bgg_api/bgg_api.dart';
import 'package:bgo/src/core/core.dart';
import 'package:isar/isar.dart';

class GetFilteredGames {
  Future<Iterable<BoardGame>> call(String query) async {
    return (await isar.boardGameDbEntrys
            .where()
            .filter()
            .nameContains(query)
            .or()
            .descriptionContains(query)
            .findAll())
        .map((e) => e.toBoardGame());
  }
}
