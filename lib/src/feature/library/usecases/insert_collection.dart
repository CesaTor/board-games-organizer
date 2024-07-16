import 'package:bgo/src/core/core.dart';
import 'package:fpdart/fpdart.dart';

class InsertCollection {
  InsertCollection(this._db);
  final AppDatabase _db;

  TaskEither<BGOError, int> call(BGOCollectionCompanion collection) {
    return TaskEither.tryCatch(
      () => _db.into(_db.bGOCollection).insert(collection),
      (error, stackTrace) => BGOError(message: 'Failed to insert collection'),
    );
  }
}
