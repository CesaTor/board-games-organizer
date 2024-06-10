import 'package:bgo/src/core/core.dart';

class SaveLocalCollection {
  Future<bool> call(CollectionDbEntry collection) async {
    try {
      await isar.writeTxn(() => isar.collectionDbEntrys.put(collection));
      await isar.writeTxn(() => collection.games.save());
      return true;
    } catch (e) {
      return false;
    }
  }
}
