import 'dart:collection';
import 'package:bgg_api/bgg_api.dart';
import 'package:bgo/src/core/usecase/get_local_games.dart';
import 'package:bgo/src/core/usecase/save_local_game.dart';
import 'package:flutter/material.dart';

class GameListProvider extends ChangeNotifier {
  /// Internal, private state of the cart.
  final List<BoardGame> _games = [];

  /// An unmodifiable view of the items in the cart.
  UnmodifiableListView<BoardGame> get games => UnmodifiableListView(_games);

  void init() {
    GetLocalGames()().then((games) {
      _games.addAll(games);
      notifyListeners();
    });
  }

  void add(BoardGame game) {
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
