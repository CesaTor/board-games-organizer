import 'package:bgo/src/core/core.dart';
import 'package:bgo/src/core/models/collection_db_entry.dart';
import 'package:isar/isar.dart';

class GetLocalCollections {
  Future<Iterable<CollectionDbEntry>> call() async {
    return (await isar.collectionDbEntrys.where().sortByName().findAll());
  }
}
