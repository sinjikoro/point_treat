import 'package:go_router/go_router.dart';
import 'package:point_treat/presentation/routes/paths.dart';
import 'package:point_treat/presentation/view/children_list/children_list_view.dart';
import 'package:point_treat/presentation/view/point_history/point_history_view.dart';
import 'package:point_treat/presentation/view/settings/settings_view.dart';
import 'package:point_treat/presentation/view/top/top_view.dart';
import 'package:point_treat/presentation/view/treat_list/treat_list_view.dart';
import 'package:point_treat/presentation/widgets/scaffold_with_bottomnavi.dart';

/// Router configuration.
final router = GoRouter(
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          ScaffoldWithBottomnavi(navigationShell),
      branches: <StatefulShellBranch>[
        // 1st branch : Top
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: Paths.top,
              builder: (_, __) => const TopView(),
            ),
          ],
        ),
        // 2nd branch : Point history
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: Paths.pointHistory,
              builder: (_, __) => const PointHisotryView(),
            ),
          ],
        ),
        // 3rd branch : Settings
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: Paths.settings,
              builder: (_, __) => const SettingsView(),
              routes: <RouteBase>[
                GoRoute(
                  path: Paths.childrenList,
                  builder: (_, __) => const ChildrenListView(),
                ),
                GoRoute(
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
