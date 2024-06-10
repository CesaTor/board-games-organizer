import 'package:bgo/src/core/core.dart';
import 'package:bgo/src/features/collections/collections.dart';
import 'package:flutter/material.dart';

class CollectionAdd extends StatefulWidget {
  const CollectionAdd({this.collection, super.key});
  final CollectionDbEntry? collection;

  @override
  State<CollectionAdd> createState() => _CollectionAddState();
}

class _CollectionAddState extends State<CollectionAdd> {
  late CollectionAddProvider provider;
  late TextEditingController nameController;

  @override
  void initState() {
    provider = CollectionAddProvider(collection: widget.collection)..init();
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: nameController,
                autofocus: true,
              ),
            ),
          ),
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: ListenableBuilder(
            listenable: provider,
            builder: (context, child) => ListView.builder(
              itemCount: provider.gameList.length,
              itemBuilder: (context, index) {
                final game = provider.gameList[index];
                return GestureDetector(
                  onTap: () => Navigator.of(context).pop(game),
                  child: Card(
                    child: CheckboxListTile(
                      value: provider.contains(game),
                      title: Text(game.name ?? ''),
                      subtitle: Text(game.yearPublished.toString()),
                      onChanged: (bool? value) {
                        provider.select(game, value!);
                      },
                    ),
                  ),
                );
              },
            ),
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
