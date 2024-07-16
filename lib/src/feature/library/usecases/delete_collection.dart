import 'package:bgo/src/core/core.dart';
import 'package:fpdart/fpdart.dart';

class DeleteCollection {
  DeleteCollection(this._db);
  final AppDatabase _db;

  TaskEither<BGOError, int> call(int collectionId) {
    return TaskEither.tryCatch(
      () => (_db.delete(_db.bGOCollection)
            ..where((e) => e.id.equals(collectionId)))
          .go(),
      (error, stackTrace) => BGOError(message: 'Failed to insert collection'),
    );
  }
}
