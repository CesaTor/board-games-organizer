import 'dart:async';
import 'dart:collection';

import 'package:bgo/src/core/models/collection_db_entry.dart';
import 'package:bgo/src/core/usecase/get_local_collections.dart';
import 'package:flutter/material.dart';

class GameCollectionProvider extends ChangeNotifier {

  GameCollectionProvider() {
    _sub = GetLocalCollections()().listen(
      (event) {
        _collections.clear();
        _collections.addAll(event);
        notifyListeners();
      },
    );
  }
  final List<CollectionDbEntry> _collections = [];

  UnmodifiableListView<CollectionDbEntry> get collections =>
      UnmodifiableListView(_collections);

  late final StreamSubscription<Iterable<CollectionDbEntry>> _sub;

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }
}
