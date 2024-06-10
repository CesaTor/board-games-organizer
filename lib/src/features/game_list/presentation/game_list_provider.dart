import 'dart:collection';
import 'package:bgo/src/core/core.dart';
import 'package:flutter/material.dart';

class GameListProvider extends ChangeNotifier {
  /// Internal, private state of the cart.
  final List<BoardGameDbEntry> _games = [];

  /// An unmodifiable view of the items in the cart.
  UnmodifiableListView<BoardGameDbEntry> get games =>
      UnmodifiableListView(_games);

  void init() {
    GetLocalGames()().then((games) {
      _games.clear();
      _games.addAll(games);
      notifyListeners();
    });
  }

  void add(BoardGameDbEntry game) {
    SaveLocalGame().call(game).then(
      (success) {
        if (success) {
          _games.add(game);
          notifyListeners();
        }
      },
    );
  }

  void removeAll() {
    _games.clear();
    notifyListeners();
  }
}
