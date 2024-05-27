import 'package:go_router/go_router.dart';
import 'package:point_treat/app/routes/paths.dart';
import 'package:point_treat/app/screen/children_list/children_list_view.dart';
import 'package:point_treat/app/screen/home/home_view.dart';
import 'package:point_treat/app/screen/main_menu/main_menu_view.dart';
import 'package:point_treat/app/screen/point_history/point_history_view.dart';
import 'package:point_treat/app/screen/treat_list/treat_list_view.dart';
import 'package:point_treat/app/widgets/default_scaffold.dart';

/// Router configuration.
final router = GoRouter(
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          DefaultScaffold(navigationShell),
      branches: <StatefulShellBranch>[
        // 1st branch : Top
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/', // initial route
              builder: (_, __) => const HomeView(),
            ),
          ],
        ),
        // 2nd branch : Settings
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/${Paths.mainMenu}',
              builder: (_, __) => const MainMenuView(),
              routes: <RouteBase>[
                GoRoute(
                  name: Paths.pointHistory,
                  path: Paths.pointHistory,
                  builder: (_, __) => const PointHisotryView(),
                ),
                GoRoute(
                  name: Paths.childrenList,
                  path: Paths.childrenList,
                  builder: (_, __) => const ChildrenListView(),
                ),
                GoRoute(
                  name: Paths.treatList,
                  path: Paths.treatList,
                  builder: (_, __) => const TreatListView(),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
