import 'package:bgo/src/core/core.dart';
import 'package:bgo/src/features/collections/add/collection_add_view.dart';
import 'package:bgo/src/features/collections/bloc/collection_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Collections extends StatelessWidget {
  const Collections({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CollectionBloc(
        getLocalCollections: GetLocalCollections(),
      ),
      child: _CollectionsView(),
    );
  }
}

class _CollectionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final collections = context.watch<CollectionBloc>().state;

    return Scaffold(
      appBar: AppBar(title: const Text('Collections')),
      body: ListView.builder(
        itemCount: collections.length,
        itemBuilder: (context, index) {
          final collection = collections.elementAt(index);
          return Slidable(
            endActionPane: ActionPane(
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: (_) => DeleteLocalCollection().call(collection.id),
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
              ],
            ),
            child: GestureDetector(
              onTap: () async {
                await Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (context) => CollectionAdd(
                      collection: collection,
                    ),
                  ),
                );
              },
              child: Card(child: ListTile(title: Text(collection.name))),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (context) => const CollectionAdd()),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
