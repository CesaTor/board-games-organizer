import 'package:bgg_api/bgg_api.dart';

class SearchByName {
  SearchByName();

  Future<List<BoardGameRef>> call(String name) => Bgg().searchBoardGames(name);
}
