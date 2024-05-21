import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Bottom navigation bar scaffold.
class ScaffoldWithBottomnavi extends StatelessWidget {
  /// Constructor.
  const ScaffoldWithBottomnavi(this.navigationShell, {super.key});

  /// Navigation shell.
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'point history',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'settings',
          ),
        ],
        onTap: _onTap,
      ),
    );
  }

  void _onTap(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
