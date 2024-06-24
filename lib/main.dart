import 'package:bgo/src/app.dart';
import 'package:bgo/src/core/global.dart';
import 'package:bgo/src/core/models/board_game_db_entry.dart';
import 'package:bgo/src/core/models/collection_db_entry.dart';
import 'package:bgo/src/settings/settings_controller.dart';
import 'package:bgo/src/settings/settings_service.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  final settingsController = SettingsController(SettingsService());
  await settingsController.loadSettings();

  // Other configs
  WidgetsFlutterBinding.ensureInitialized();
  // Open the Isar database.
  final dir = await getApplicationDocumentsDirectory();
  isar = await Isar.open(
    [
      BoardGameDbEntrySchema,
      CollectionDbEntrySchema,
    ],
    directory: dir.path,
  );

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(MyApp(settingsController: settingsController));
}
