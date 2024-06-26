import 'package:bgo/src/features/games/add/presentation/game_add_provider.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';

class GameAdd extends StatelessWidget {
  GameAdd({super.key});

  final GameAddProvider gameAddProvider = GameAddProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Game'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              onChanged: (query) {
                EasyDebounce.debounce(
                  'game_search',
                  Durations.short2,
                  () => gameAddProvider.search(query),
                );
              },
              autofocus: true,
            ),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: ListenableBuilder(
          listenable: gameAddProvider,
          builder: (context, child) => ListView.builder(
            itemCount: gameAddProvider.gameList.length,
            itemBuilder: (context, index) {
              final game = gameAddProvider.gameList[index];
              return GestureDetector(
                onTap: () => Navigator.of(context).pop(game),
                child: Card(
                  child: ListTile(
                    title: Text(game.name ?? ''),
                    subtitle: Text(game.yearPublished.toString()),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
