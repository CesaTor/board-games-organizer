import 'package:bgo/src/core/core.dart';
import 'package:bgo/src/feature/feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  static const path = '/library';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LibraryBloc(
        GetCollections(context.read()),
        InsertCollection(context.read()),
        DeleteCollection(context.read()),
      )..add(LibraryInit()),
      child: const _LibraryPageView(),
    );
  }
}

class _LibraryPageView extends StatelessWidget {
  const _LibraryPageView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collections'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: BlocConsumer<LibraryBloc, LibraryState>(
        listenWhen: (p, c) => c is LibraryError,
        listener: (context, state) {
          if (state is LibraryError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error.message)),
            );
          }
        },
        buildWhen: (p, c) => c is LibraryLoaded,
        builder: (context, state) {
          if (state is! LibraryLoaded) {
            return const Center(child: CircularProgressIndicator());
          }
          final collections = state.collections;
          return ListView.builder(
            itemCount: collections.length,
            itemBuilder: (context, index) {
              final collection = collections[index];
              return Slidable(
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  children: [
                    SlidableAction(
                      onPressed: (ctx) {
                        context
                            .read<LibraryBloc>()
                            .add(LibraryDelete(collection.id));
                      },
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      icon: Icons.remove,
                      label: 'Remove',
                    ),
                  ],
                ),
                child: ListTile(
                  title: Text(collection.name),
                  subtitle: Text(collection.description),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context
              .push<BGOCollectionCompanion>(
            '${LibraryPage.path}/${AddCollectionPage.path}',
          )
              .then(
            (value) {
              if (value != null) {
                context.read<LibraryBloc>().add(LibraryAdd(value));
              }
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
