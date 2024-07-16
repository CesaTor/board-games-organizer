import 'package:bgo/src/core/core.dart';
import 'package:bgo/src/feature/feature.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: LibraryPage.path,
  debugLogDiagnostics: true,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (_, __, Widget child) => ScaffoldWithNavBar(child: child),
      routes: [
        GoRoute(
          path: LibraryPage.path,
          builder: (context, state) => const LibraryPage(),
          routes: [
            GoRoute(
              path: AddCollectionPage.path,
              builder: (context, state) => const AddCollectionPage(),
            ),
            GoRoute(
              path: AddEntryPage.path,
              builder: (context, state) => const AddEntryPage(),
            ),
            GoRoute(
              path: CollectionPage.path,
              redirect: (context, state) =>
                  '${LibraryPage.path}/${CollectionPage.path}/0',
              routes: [
                GoRoute(
                  path: ':id',
                  builder: (context, state) {
                    final id = int.tryParse(state.pathParameters['id']!) ?? 0;
                    return CollectionPage(id: id);
                  },
                ),
              ],
            ),
            GoRoute(
              path: SearchPage.path,
              builder: (context, state) => const SearchPage(),
            ),
          ],
        ),
        GoRoute(
          path: SettingsPage.path,
          builder: (context, state) => const SearchPage(),
        ),
      ],
    ),
  ],
);
