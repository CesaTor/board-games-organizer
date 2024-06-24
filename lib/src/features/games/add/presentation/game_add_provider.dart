import 'dart:collection';

import 'package:bgg_api/bgg_api.dart';
import 'package:bgo/src/core/usecase/search_by_name.dart';
import 'package:flutter/material.dart';

class GameAddProvider extends ChangeNotifier {
  final List<BoardGameRef> _games = [];
  final SearchByName _searchByName = SearchByName();
  int _currentSearchToken = 0;

  UnmodifiableListView<BoardGameRef> get gameList =>
      UnmodifiableListView(_games);

  Future<void> search(String name) async {
    final thisSearchToken = ++_currentSearchToken;
    final v = await _searchByName(name);

    if (thisSearchToken == _currentSearchToken) {
      _games.clear();
      _games.addAll(v);
      notifyListeners();
    }
  }
}
