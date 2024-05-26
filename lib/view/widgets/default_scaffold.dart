import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:point_treat/view/widgets/task_modal.dart';

/// Default Scaffold for the app.
class DefaultScaffold extends StatelessWidget {
  /// Constructor.
  const DefaultScaffold(this.navigationShell, {super.key});

  /// Navigation shell.
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: navigationShell),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'settings',
          ),
        ],
        onTap: _onTap,
      ),
      floatingActionButton: const _FloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _onTap(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}

/// Floating action button.
class _FloatingActionButton extends StatelessWidget {
  const _FloatingActionButton();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _showModal(context),
      child: const Icon(Icons.add),
    );
  }

  void _showModal(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const TaskModal();
      },
    );
  }
}
