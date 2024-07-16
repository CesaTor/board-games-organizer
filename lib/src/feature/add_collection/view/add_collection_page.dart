import 'package:bgo/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class AddCollectionPage extends HookWidget {
  const AddCollectionPage({super.key});

  static const String path = 'add_collection';

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final descriptionController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Collection'),
      ),
      body: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'Name'),
          ),
          TextField(
            controller: descriptionController,
            decoration: const InputDecoration(labelText: 'Description'),
          ),
          ElevatedButton(
            onPressed: () {
              if (nameController.text.isEmpty) return;
              context.pop(
                BGOCollectionCompanion.insert(
                  name: nameController.text,
                  description: descriptionController.text,
                ),
              );
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
