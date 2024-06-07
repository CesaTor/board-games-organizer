import 'package:bgg_api/bgg_api.dart';
import 'package:bgo/src/core/core.dart';

class SaveLocalGame {
  Future<bool> call(BoardGame game) async {
    try {
      await isar.writeTxn(
        () => isar.boardGameDbEntrys.put(BoardGameDbEntry.fromBoardGame(game)),
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}
