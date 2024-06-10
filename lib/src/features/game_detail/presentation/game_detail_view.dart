import 'package:bgo/src/core/core.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class GameDetail extends StatelessWidget {
  const GameDetail({required this.game, super.key});

  final BoardGameDbEntry game;

  @override
  Widget build(BuildContext context) {
    const titleStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

    return Scaffold(
      appBar: AppBar(
          title: Text("${game.name} (${game.yearPublished})"),
          bottom: game.thumbnail != null
              ? PreferredSize(
                  preferredSize: const Size.fromHeight(150),
                  child: Hero(
                    tag: game,
                    child: CachedNetworkImage(
                      imageUrl: game.thumbnail!.toString(),
                    ),
                  ),
                )
              : null),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FutureBuilder(
                  future: GetGameCollections().call(game),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData || snapshot.data == null) {
                      return const CircularProgressIndicator();
                    }
                    return Row(
                      children: [
                        const Text("Place: ", style: titleStyle),
                        for (final collection in snapshot.data!)
                          Text('${collection.name}, '),
                      ],
                    );
                  }),
              Row(
                children: [
                  const Text("Players: ", style: titleStyle),
                  Text("${game.minPlayers}-${game.maxPlayers}"),
                ],
              ),
              Row(
                children: [
                  const Text("Age: ", style: titleStyle),
                  Text("${game.minAge}+"),
                ],
              ),
              Row(
                children: [
                  const Text("Playing Time: ", style: titleStyle),
                  Text("${game.playingTime}+"),
                ],
              ),
              const Text('Description:', style: titleStyle),
              Text(game.description ?? ''),
            ],
          ),
        ),
      ),
    );
  }
}
