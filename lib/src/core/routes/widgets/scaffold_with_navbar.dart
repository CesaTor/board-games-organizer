import 'package:bgo/src/feature/library/library.dart';
import 'package:bgo/src/feature/settings/view/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final i18n = AppLocalizations.of(context)!;

    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.games),
            label: i18n.navbar_search,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: i18n.navbar_settings,
          ),
        ],
        currentIndex: _calculateSelectedIndex(context),
        onTap: (int idx) => _onItemTapped(idx, context),
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;
    if (location.startsWith(LibraryPage.path)) {
      return 0;
    }
    if (location.startsWith(SettingsPage.path)) {
      return 1;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go(LibraryPage.path);
      case 1:
        GoRouter.of(context).go(SettingsPage.path);
    }
  }
}
