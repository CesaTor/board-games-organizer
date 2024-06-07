import 'package:bgo/src/core/core.dart';
import 'package:isar/isar.dart';

part 'collection_db_entry.g.dart';

@collection
class CollectionDbEntry {
  CollectionDbEntry({required this.name});

  Id id = Isar.autoIncrement;

  String? name;

  final games = IsarLinks<BoardGameDbEntry>();
}
