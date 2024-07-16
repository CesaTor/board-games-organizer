import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'tables.g.dart';

abstract class BGOEntry extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().nullable()();
  TextColumn get description => text().nullable()();
  IntColumn get gameId => integer().nullable()();
  TextColumn get image => text().nullable()();

  IntColumn get minAge => integer().nullable()();

  IntColumn get minPlayers => integer().nullable()();
  IntColumn get maxPlayers => integer().nullable()();

  IntColumn get minPlayTime => integer().nullable()();
  IntColumn get maxPlayTime => integer().nullable()();
  IntColumn get playingTime => integer().nullable()();

  TextColumn get thumbnail => text().nullable()();

  IntColumn get yearPublished => integer().nullable()();

  IntColumn get collection =>
      integer().nullable().references(BGOCollection, #id)();
}

abstract class BGOCollection extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get description => text()();
}

@DriftDatabase(tables: [BGOEntry, BGOCollection])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'bgo_local');
  }
}
