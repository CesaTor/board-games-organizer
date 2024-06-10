import 'package:bgo/src/core/core.dart';
import 'package:isar/isar.dart';

class GetLocalCollections {
  Stream<Iterable<CollectionDbEntry>> call() =>
      isar.collectionDbEntrys.where().sortByName().watch(fireImmediately: true);
}
