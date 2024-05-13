import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

/// Entry point for the application.
class MainApp extends StatelessWidget {
  /// Default constructor for the [MainApp].
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
