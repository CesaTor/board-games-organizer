import 'package:bgo/src/features/game_collection_add/presentation/game_collection_add_view.dart';
import 'package:bgo/src/features/game_collections/presentation/game_collections_provider.dart';
import 'package:flutter/material.dart';

class GameCollections extends StatelessWidget {
  GameCollections({super.key});

  final gameCollectionsProvider = GameCollectionProvider()..init();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Collections')),
      body: ListenableBuilder(
        listenable: gameCollectionsProvider,
        builder: (context, child) => ListView.builder(
          itemCount: gameCollectionsProvider.collections.length,
          itemBuilder: (context, index) {
            final collection = gameCollectionsProvider.collections[index];
            return GestureDetector(
              onTap: () async {
                // TODO: collection view
              },
              child: ListTile(
                title: Text(collection.name ?? ''),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => GameCollectionAdd(),
            ),
          );
          gameCollectionsProvider.init();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
