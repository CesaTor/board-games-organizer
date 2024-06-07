import 'package:bgg_api/bgg_api.dart';

class GetGameInfo {
  GetGameInfo();

  Future<BoardGame?> call(int id) async {
    return await Bgg().getBoardGame(id);
  }
}
