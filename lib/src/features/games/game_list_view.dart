import 'package:bgg_api/bgg_api.dart';
import 'package:bgo/src/core/core.dart';
import 'package:bgo/src/features/games/games.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class GameList extends StatelessWidget {
  GameList({super.key});

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
            return Slidable(
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: (_) {
                      DeleteLocalGame().call(game);
                    },
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute<BoardGameRef>(
                    builder: (context) => GameDetail(game: game),
                  ),
                ),
                child: Card(
                  child: ListTile(
                    leading: SizedBox(
                      width: 100,
                      child: CachedNetworkImage(
                        imageUrl: game.thumbnail?.toString() ??
                            "https://placehold.co/400",
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                    title: Text(game.names.first),
                    subtitle: Text(game.yearPublished.toString()),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final gameref = await Navigator.of(context).push(
            MaterialPageRoute<BoardGameRef?>(builder: (context) => GameAdd()),
          );

          if (gameref is! BoardGameRef || gameref.id == null) return;

          final game = await GetGameInfo()(gameref.id!);
          if (game == null) return;

          gameListProvider.add(BoardGameDbEntry.fromBoardGame(game));
        },
        tooltip: 'Add Game',
        child: const Icon(Icons.add),
      ),
    );
  }
}
