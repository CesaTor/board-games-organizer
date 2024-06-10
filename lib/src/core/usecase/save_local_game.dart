import 'package:bgo/src/core/core.dart';

class SaveLocalGame {
  Future<bool> call(BoardGameDbEntry game) async {
    try {
      return (await isar.writeTxn(() => isar.boardGameDbEntrys.put(game))) > 0;
    } catch (e) {
      return false;
    }
  }
}
