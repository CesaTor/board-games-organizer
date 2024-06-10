import 'package:bgo/src/core/core.dart';
import 'package:bgo/src/core/models/collection_db_entry.dart';
import 'package:isar/isar.dart';

class DeleteLocalCollection {
  DeleteLocalCollection();

  Future<bool> call(CollectionDbEntry collection) async {
    try {
      final remove = await isar.writeTxn(
        () => isar.collectionDbEntrys
            .where()
            .idEqualTo(collection.id)
            .deleteAll(),
      );

      return remove >= 1;
    } catch (e) {
      return false;
    }
  }
}
