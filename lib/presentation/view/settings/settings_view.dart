import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:point_treat/presentation/routes/paths.dart';

/// Settings view.
class SettingsView extends StatelessWidget {
  /// Default constructor for the [SettingsView].
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Settings'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () =>
                    context.go('${Paths.settings}/${Paths.childrenList}'),
                child: const Text('Children List'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
