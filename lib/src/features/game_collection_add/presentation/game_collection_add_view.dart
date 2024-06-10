import 'package:bgo/src/core/models/collection_db_entry.dart';
import 'package:bgo/src/features/game_collection_add/presentation/game_collection_add_provider.dart';
import 'package:flutter/material.dart';

class GameCollectionAdd extends StatefulWidget {
  const GameCollectionAdd({this.collection, super.key});
  final CollectionDbEntry? collection;

  @override
  State<GameCollectionAdd> createState() => _GameCollectionAddState();
}

class _GameCollectionAddState extends State<GameCollectionAdd> {
  late GameCollectionAddProvider provider;
  late TextEditingController nameController;

  @override
  void initState() {
    provider = GameCollectionAddProvider(collection: widget.collection)..init();
    nameController = TextEditingController(text: widget.collection?.name);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.collection != null ? 'Edit Collection' : 'Add Collection',
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: TextField(controller: nameController),
          ),
        ),
        body: ListenableBuilder(
          listenable: provider,
          builder: (context, child) => ListView.builder(
            itemCount: provider.gameList.length,
            itemBuilder: (context, index) {
              final game = provider.gameList[index];
              return GestureDetector(
                onTap: () => Navigator.of(context).pop(game),
                child: CheckboxListTile(
                  value: provider.contains(game),
                  title: Text(game.name ?? ''),
                  subtitle: Text(game.yearPublished.toString()),
                  onChanged: (bool? value) {
                    provider.select(game, value!);
                  },
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (nameController.text.isNotEmpty) {
              provider
                  .save(nameController.text)
                  .then((value) => Navigator.of(context).pop());
            }
          },
          child: const Icon(Icons.check),
        ));
  }
}
