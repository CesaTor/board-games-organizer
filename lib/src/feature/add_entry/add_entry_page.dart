import 'package:flutter/material.dart';

class AddEntryPage extends StatelessWidget {
  const AddEntryPage({super.key});

  static const String path = 'add_entry';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Entry'),
      ),
      body: const Center(
        child: Text('Add Entry Page'),
      ),
    );
  }
}
