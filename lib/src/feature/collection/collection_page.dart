import 'package:flutter/material.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({
    required this.id,
    super.key,
  });

  final int id;
  static const String path = 'collection';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collection'),
      ),
      body: const Center(
        child: Text('Collection Page'),
      ),
    );
  }
}
