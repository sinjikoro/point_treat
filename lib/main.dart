import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:point_treat/app/routes/routes.dart';
import 'package:point_treat/app/theme/default_theme.dart';
import 'package:point_treat_view_model/view_models/treat_view_model.dart';

void main() {
  print(getTest());
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

/// Entry point for the application.
class MainApp extends StatelessWidget {
  /// Default constructor for the [MainApp].
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: defaultTheme,
      routerConfig: router,
    );
  }
}
