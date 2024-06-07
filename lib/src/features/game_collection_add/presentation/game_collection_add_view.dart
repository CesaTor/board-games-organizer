import 'package:bgo/src/features/game_collection_add/presentation/game_collection_add_provider.dart';
import 'package:flutter/material.dart';

class GameCollectionAdd extends StatelessWidget {
  GameCollectionAdd({super.key});

  final gameAddProvider = GameCollectionAddProvider()..init();

  @override
  Widget build(BuildContext context) {
    String? name;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Collection'),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: TextField(
              onChanged: (value) => name = value,
            ),
          ),
        ),
        body: ListenableBuilder(
          listenable: gameAddProvider,
          builder: (context, child) => ListView.builder(
            itemCount: gameAddProvider.gameList.length,
            itemBuilder: (context, index) {
              final game = gameAddProvider.gameList[index];
              return GestureDetector(
                onTap: () => Navigator.of(context).pop(game),
                child: CheckboxListTile(
                  value: gameAddProvider.selectedGames.contains(game),
                  title: Text(game.name ?? ''),
                  subtitle: Text(game.yearPublished.toString()),
                  onChanged: (bool? value) {
                    gameAddProvider.select(game, value!);
                  },
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (name != null) {
              gameAddProvider
                  .save(name!)
                  .then((value) => Navigator.of(context).pop());
            }
          },
          child: const Icon(Icons.check),
        ));
  }
}
