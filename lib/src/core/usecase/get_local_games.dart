import 'package:bgg_api/bgg_api.dart';
import 'package:bgo/src/core/core.dart';
import 'package:isar/isar.dart';

class GetLocalGames {
  Future<Iterable<BoardGame>> call() async {
    return (await isar.boardGameDbEntrys.where().findAll())
        .map((e) => e.toBoardGame());
  }
}