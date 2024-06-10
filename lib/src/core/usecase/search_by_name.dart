import 'package:bgg_api/bgg_api.dart';

class SearchByName {
  SearchByName();

  Future<List<BoardGameRef>> call(String name) async {
    return await Bgg().searchBoardGames(name);
  }
}
