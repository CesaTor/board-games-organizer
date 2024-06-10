import 'dart:async';
import 'dart:collection';
import 'package:bgo/src/core/core.dart';
import 'package:flutter/material.dart';

class GameListProvider extends ChangeNotifier {
  /// Internal, private state of the cart.
  final List<BoardGameDbEntry> _games = [];

  /// An unmodifiable view of the items in the cart.
  UnmodifiableListView<BoardGameDbEntry> get games =>
      UnmodifiableListView(_games);

  late final StreamSubscription<Iterable<BoardGameDbEntry>> _sub;

  GameListProvider() {
    _sub = GetLocalGames()().listen(
      (event) {
        _games.clear();
        _games.addAll(event);
        notifyListeners();
      },
    );
  }

  void add(BoardGameDbEntry game) {
    SaveLocalGame().call(game);
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }
}
