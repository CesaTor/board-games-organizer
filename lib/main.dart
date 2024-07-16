import 'package:bgo/src/app.dart';
import 'package:bgo/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    RepositoryProvider(
      // Init database
      create: (_) => AppDatabase(),
      child: const MyApp(),
    ),
  );
}
