import 'package:go_router/go_router.dart';
import 'package:point_treat/view/children_list_view.dart';
import 'package:point_treat/view/point_history_view.dart';
import 'package:point_treat/view/routes/paths.dart';
import 'package:point_treat/view/settings_view.dart';
import 'package:point_treat/view/top_view.dart';
import 'package:point_treat/view/treat_list_view.dart';

/// GoRouter instance.
GoRouter goRouter = GoRouter(
  initialLocation: Paths.top,
  routes: [
    GoRoute(
      path: Paths.top,
      builder: (context, state) => const TopView(),
    ),
    GoRoute(
      path: Paths.pointHistory,
      builder: (context, state) => const PointHisotryView(),
    ),
    GoRoute(
      path: Paths.settings,
      builder: (context, state) => const SettingsView(),
    ),
    GoRoute(
      path: Paths.childrenList,
      builder: (context, state) => const ChildrenListView(),
    ),
    GoRoute(
      path: Paths.treatList,
      builder: (context, state) => const TreatListView(),
    ),
  ],
);
