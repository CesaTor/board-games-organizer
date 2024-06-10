import 'package:bgo/src/core/core.dart';
import 'package:bgo/src/core/models/collection_db_entry.dart';
import 'package:isar/isar.dart';

class GetGameCollections {
  Future<Iterable<CollectionDbEntry>> call(BoardGameDbEntry game) async {
    return (await isar.collectionDbEntrys.where().findAll())
        .map((e) => e.games.contains(game) ? e : null)
        .nonNulls;
  }
}
