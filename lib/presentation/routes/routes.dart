import 'package:go_router/go_router.dart';
import 'package:point_treat/presentation/routes/paths.dart';
import 'package:point_treat/presentation/view/children_list/children_list_view.dart';
import 'package:point_treat/presentation/view/main_menu/main_menu_view.dart';
import 'package:point_treat/presentation/view/point_history/point_history_view.dart';
import 'package:point_treat/presentation/view/top/top_view.dart';
import 'package:point_treat/presentation/view/treat_list/treat_list_view.dart';
import 'package:point_treat/presentation/widgets/default_scaffold.dart';

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
              builder: (_, __) => const TopView(),
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
