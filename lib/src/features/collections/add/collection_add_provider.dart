import 'dart:collection';
import 'package:bgo/src/core/core.dart';
import 'package:flutter/material.dart';

class CollectionAddProvider extends ChangeNotifier {
  /// Internal, private state of the cart.
  final List<BoardGameDbEntry> _games = [];
  final List<BoardGameDbEntry> _selectedGames = [];
  final CollectionDbEntry? collection;

  CollectionAddProvider({this.collection});

  /// An unmodifiable view of the items in the cart.
  UnmodifiableListView<BoardGameDbEntry> get selectedGames =>
      UnmodifiableListView(_selectedGames);
  UnmodifiableListView<BoardGameDbEntry> get gameList =>
      UnmodifiableListView(_games);

  bool contains(BoardGameDbEntry game) {
    return _selectedGames.any((e) => e.gameId == game.gameId);
  }

  void init() {
    _selectedGames.clear();
    _selectedGames.addAll(collection?.games ?? []);
    notifyListeners();

    GetLocalGames()(sortByName: true).listen(
      (event) {
        _games.clear();
        _games.addAll(event);
        notifyListeners();
      },
    );
  }

  void select(BoardGameDbEntry game, bool value) {
    if (value) {
      _selectedGames.add(game);
    } else {
      _selectedGames.removeWhere((e) => e.gameId == game.gameId);
    }
    notifyListeners();
  }

  Future<void> save(String name) async {
    final c = collection ?? CollectionDbEntry(name: name);
    c.games.clear();
    c.games.addAll(_selectedGames);

    await SaveLocalCollection()(c);
  }
}
