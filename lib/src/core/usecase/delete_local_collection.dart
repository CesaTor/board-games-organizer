import 'package:bgo/src/core/core.dart';
import 'package:isar/isar.dart';

class DeleteLocalCollection {
  DeleteLocalCollection();

  Future<bool> call(CollectionDbEntry collection) async {
    try {
      return (await isar.writeTxn(() => isar.collectionDbEntrys
              .where()
              .idEqualTo(collection.id)
              .deleteAll())) >=
          1;
    } catch (e) {
      return false;
    }
  }
}
