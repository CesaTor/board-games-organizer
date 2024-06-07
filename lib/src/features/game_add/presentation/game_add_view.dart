import 'package:bgo/src/features/game_add/presentation/game_add_provider.dart';
import 'package:flutter/material.dart';

class GameAdd extends StatelessWidget {
  GameAdd({super.key});
  static const routeName = '/add';

  final GameAddProvider gameAddProvider = GameAddProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Game'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: TextField(onChanged: gameAddProvider.search),
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
              child: ListTile(
                title: Text(game.name ?? ''),
                subtitle: Text(game.yearPublished.toString()),
              ),
            );
          },
        ),
      ),
    );
  }
}
