import 'dart:collection';

import 'package:bgg_api/bgg_api.dart';
import 'package:bgo/src/core/core.dart';
import 'package:bgo/src/core/models/collection_db_entry.dart';
import 'package:bgo/src/core/usecase/save_local_collection.dart';
import 'package:bgo/src/features/game_collection_add/usecase/get_filtered_games.dart';
import 'package:flutter/material.dart';

bool _canSearch = true;

class GameCollectionAddProvider extends ChangeNotifier {
  /// Internal, private state of the cart.
  final List<BoardGame> _games = [];
  final List<BoardGame> _selectedGames = [];
  final _searchByName = GetFilteredGames();

  /// An unmodifiable view of the items in the cart.
  UnmodifiableListView<BoardGame> get selectedGames =>
      UnmodifiableListView(_selectedGames);
  UnmodifiableListView<BoardGame> get gameList => UnmodifiableListView(_games);
  
  void init() {
    GetLocalGames()(sortByName: true).then((games) {
      _games.clear();
      _games.addAll(games);
      notifyListeners();
    });
  }

  void select(BoardGame game, bool value) {
    if (value) {
      _selectedGames.add(game);
    } else {
      _selectedGames.remove(game);
    }
    notifyListeners();
  }

  Future<void> save(String name) async {
    final CollectionDbEntry collection = CollectionDbEntry(name: name);
    collection.games.addAll(_selectedGames.map(BoardGameDbEntry.fromBoardGame));

    await SaveLocalCollection()(collection);
  }

  Future<void> search(String name) async {
    if (_canSearch) {
      _canSearch = false;
      Future.delayed(const Duration(milliseconds: 300), () async {
        final v = await _searchByName(name);
        _games.clear();
        _games.addAll(v);
        notifyListeners();
        _canSearch = true;
      });
    }

    _searchByName(name).then((value) {
      _games.clear();
      _games.addAll(value);
      notifyListeners();
    });
  }
}
