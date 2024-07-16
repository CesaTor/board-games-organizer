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
    final formKey = useMemoized(GlobalKey<FormState>.new);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Collection'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                autofocus: true,
                decoration: const InputDecoration(labelText: 'Name'),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) =>
                    value?.isEmpty ?? true ? 'Required' : null,
              ),
              TextFormField(
                controller: descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (!(formKey.currentState?.validate() ?? false)) return;
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
        ),
      ),
    );
  }
}
