import 'package:bgg_api/bgg_api.dart';
import 'package:isar/isar.dart';

part 'board_game_db_entry.g.dart';

@collection
class BoardGameDbEntry {
  BoardGameDbEntry({
    required this.gameId,
    required this.name,
    required this.names,
    required this.yearPublished,
    required this.minPlayers,
    required this.maxPlayers,
    required this.minPlayTime,
    required this.maxPlayTime,
    required this.minAge,
    required this.thumbnail,
    required this.image,
    required this.description,
    required this.playingTime,
  });

  factory BoardGameDbEntry.fromBoardGame(BoardGame game) => BoardGameDbEntry(
        gameId: game.id,
        name: game.name,
        names: game.names,
        yearPublished: game.yearPublished,
        minPlayers: game.minPlayers,
        maxPlayers: game.maxPlayers,
        minPlayTime: game.minPlayTime,
        maxPlayTime: game.maxPlayTime,
        minAge: game.minAge,
        thumbnail: game.thumbnail.toString(),
        image: game.image.toString(),
        description: game.description,
        playingTime: game.playingTime,
      );
  BoardGame toBoardGame() => BoardGame(
        id: gameId,
        name: name,
        names: names,
        yearPublished: yearPublished,
        minPlayers: minPlayers,
        maxPlayers: maxPlayers,
        minPlayTime: minPlayTime,
        maxPlayTime: maxPlayTime,
        minAge: minAge,
        thumbnail: thumbnail != null ? Uri.parse(thumbnail!) : null,
        image: image != null ? Uri.parse(image!) : null,
        description: description,
        playingTime: playingTime,
      );

  Id id = Isar.autoIncrement;

  String? description;

  int? gameId;

  String? image;

  int? maxPlayTime;

  int? maxPlayers;

  int? minAge;

  int? minPlayTime;

  int? minPlayers;

  String? name;

  List<String> names;

  int? playingTime;

  String? thumbnail;

  int? yearPublished;
}
