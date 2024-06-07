import 'dart:collection';

import 'package:bgg_api/bgg_api.dart';
import 'package:flutter/material.dart';

class GameListProvider extends ChangeNotifier {
  /// Internal, private state of the cart.
  final List<BoardGame> _games = [];

  /// An unmodifiable view of the items in the cart.
  UnmodifiableListView<BoardGame> get games => UnmodifiableListView(_games);

  void add(BoardGame game) {
    _games.add(game);
    notifyListeners();
  }

  void removeAll() {
    _games.clear();
    notifyListeners();
  }
}
