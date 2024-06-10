import 'package:bgg_api/bgg_api.dart';

class GetGameInfo {
  GetGameInfo();

  Future<BoardGame?> call(int id) => Bgg().getBoardGame(id);
}
