import 'package:bgo/src/features/game_collections/presentation/game_collections_view.dart';
import 'package:bgo/src/features/game_list/presentation/game_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'settings/settings_controller.dart';

/// The Widget that configures your application.
class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late PageController controller;

  @override
  void initState() {
    controller = PageController(initialPage: 0, keepPage: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: widget.settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          restorationScopeId: 'app',
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English, no country code
          ],
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          themeMode: widget.settingsController.themeMode,
          home: Scaffold(
            body: PageView(
              controller: controller,
              children: [
                GameList(),
                GameCollections(),
              ],
            ),
            bottomNavigationBar: _NavBar(
              controller: controller,
              onTap: (index) {
                controller.animateToPage(index,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut);
              },
            ),
          ),
        );
      },
    );
  }
}

class _NavBar extends StatefulWidget {
  const _NavBar({
    required this.controller,
    required this.onTap,
  });

  final PageController controller;
  final void Function(int) onTap;

  @override
  State<_NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<_NavBar> {
  int currentPage = 0;

  @override
  void initState() {
    currentPage = widget.controller.page?.toInt() ?? 0;
    widget.controller.addListener(
      () => setState(() {
        currentPage = widget.controller.page?.toInt() ?? currentPage;
      }),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.games),
          label: 'List',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.collections),
          label: 'Collections',
        ),
      ],
      currentIndex: currentPage,
      selectedItemColor: Colors.amber[800],
      onTap: widget.onTap,
    );
  }
}
