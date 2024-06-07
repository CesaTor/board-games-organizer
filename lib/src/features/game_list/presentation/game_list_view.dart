import 'package:bgg_api/bgg_api.dart';
import 'package:bgo/src/features/game_add/presentation/game_add_view.dart';
import 'package:bgo/src/features/game_list/presentation/game_list_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class GameList extends StatelessWidget {
  GameList({super.key});
  static const routeName = '/list';

  final GameListProvider gameListProvider = GameListProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Games')),
      body: ListenableBuilder(
        listenable: gameListProvider,
        builder: (context, child) => ListView.builder(
          itemCount: gameListProvider.games.length,
          itemBuilder: (context, index) {
            final game = gameListProvider.games[index];
            return ListTile(
              leading: CachedNetworkImage(
                imageUrl:
                    game.thumbnail?.toString() ?? "https://placehold.co/400",
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              title: Text(game.names.first),
              subtitle: Text(game.yearPublished.toString()),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // return Navigator.restorablePushNamed(context, GameAdd.routeName);
          final game =
              await Navigator.pushNamed<BoardGame?>(context, GameAdd.routeName);
          if (game != null) gameListProvider.add(game);
        },
        tooltip: 'Add Game',
        child: const Icon(Icons.add),
      ),
    );
  }
}
