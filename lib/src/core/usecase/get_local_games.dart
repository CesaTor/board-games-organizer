import 'package:bgo/src/core/core.dart';
import 'package:isar/isar.dart';

class GetLocalGames {
  Future<Iterable<BoardGameDbEntry>> call({bool sortByName = false}) async {
    if (sortByName) {
      return (await isar.boardGameDbEntrys.where().sortByName().findAll());
    } else {
      return (await isar.boardGameDbEntrys.where().findAll());
    }
  }
}
