import 'package:bgo/src/core/core.dart';
import 'package:bgo/src/core/models/collection_db_entry.dart';

class SaveLocalCollection {
  Future<bool> call(CollectionDbEntry collection) async {
    try {
      await isar.writeTxn(
        () => isar.collectionDbEntrys.put(collection),
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}
