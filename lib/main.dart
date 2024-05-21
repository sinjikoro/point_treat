import 'package:flutter/material.dart';
import 'package:point_treat/presentation/routes/routes.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routerConfig: router,
    );
  }
}
