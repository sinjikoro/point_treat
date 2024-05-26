import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:point_treat/view/routes/paths.dart';

/// Settings view.
class MainMenuView extends StatelessWidget {
  /// Default constructor for the [MainMenuView].
  const MainMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Main Menu'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () => context.goNamed(Paths.pointHistory),
                    child: const Text('ポイント履歴'),
                  ),
                  ElevatedButton(
                    onPressed: () => context.goNamed(Paths.childrenList),
                    child: const Text('子供一覧'),
                  ),
                  ElevatedButton(
                    onPressed: () => context.goNamed(Paths.treatList),
                    child: const Text('ご褒美一覧'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
