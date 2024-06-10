import 'package:bgo/src/core/core.dart';
import 'package:isar/isar.dart';

class DeleteLocalGame {
  DeleteLocalGame();

  Future<bool> call(BoardGameDbEntry game) async {
    try {
      return (await isar.writeTxn(() =>
              isar.boardGameDbEntrys.where().idEqualTo(game.id).deleteAll())) >=
          1;
    } catch (e) {
      return false;
    }
  }
}
