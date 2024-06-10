import 'dart:collection';

import 'package:bgg_api/bgg_api.dart';
import 'package:bgo/src/features/game_list/usecase/search_by_name.dart';
import 'package:flutter/material.dart';

class GameAddProvider extends ChangeNotifier {
  /// Internal, private state of the cart.
  final List<BoardGameRef> _games = [];
  final SearchByName _searchByName = SearchByName();

  /// An unmodifiable view of the items in the cart.
  UnmodifiableListView<BoardGameRef> get gameList =>
      UnmodifiableListView(_games);

  Future<void> search(String name) async {
    final v = await _searchByName(name);
    _games.clear();
    _games.addAll(v);
    notifyListeners();
  }
}
