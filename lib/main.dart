import 'package:flutter/material.dart';
import 'package:point_treat/view/routes/routes.dart';
import 'package:point_treat/view/theme/default_theme.dart';

void main() {
  runApp(const MainApp());
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
