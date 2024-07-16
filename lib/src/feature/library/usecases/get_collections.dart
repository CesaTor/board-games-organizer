import 'package:bgo/src/core/core.dart';
import 'package:fpdart/fpdart.dart';

class GetCollections {
  GetCollections(this.db);
  final AppDatabase db;

  TaskEither<BGOError, List<BGOCollectionData>> call() {
    return TaskEither.tryCatch(
      () => db.select(db.bGOCollection).get(),
      (error, stackTrace) => BGOError(message: 'Failed to get collections'),
    );
  }
}
