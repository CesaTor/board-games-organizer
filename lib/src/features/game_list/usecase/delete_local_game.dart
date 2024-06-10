import 'package:bgo/src/core/core.dart';
import 'package:isar/isar.dart';

class DeleteLocalGame {
  DeleteLocalGame();

  Future<bool> call(BoardGameDbEntry game) async {
    try {
      final remove = await isar.writeTxn(
        () => isar.boardGameDbEntrys.where().idEqualTo(game.id).deleteAll(),
      );

      return remove >= 1;
    } catch (e) {
      return false;
    }
  }
}
