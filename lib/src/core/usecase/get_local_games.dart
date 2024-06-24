import 'package:bgo/src/core/core.dart';
import 'package:isar/isar.dart';

class GetLocalGames {
  Stream<Iterable<BoardGameDbEntry>> call({bool sortByName = false}) {
    if (sortByName) {
      return isar.boardGameDbEntrys
          .where()
          .sortByName()
          .watch(fireImmediately: true);
    } else {
      return isar.boardGameDbEntrys.where().watch(fireImmediately: true);
    }
  }
}
