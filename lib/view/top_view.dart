import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// top view.
class TopView extends StatelessWidget {
  /// Default constructor for the [TopView].
  const TopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // ToDo: SafeAreaを毎画面書くのは面倒なので、mixinで共通化したい
      body: SafeArea(
        child: Column(
          children: [
            AccountCard(accountName: 'たろう', point: 10000),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: TreatsFloatingActionButton(),
      bottomNavigationBar: MainBottomNavigationBar(),
    );
  }
}

/// Account card.
class AccountCard extends StatelessWidget {
  /// Default constructor for the [AccountCard].
  const AccountCard({
    required this.accountName,
    required this.point,
    super.key,
  });

  /// Account name.
  final String accountName;

  /// Point.
  final int point;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
      child: Stack(
        children: [
          Card(
            child: Container(
              padding: const EdgeInsets.all(16),
              height: 170,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('$point pt', style: const TextStyle(fontSize: 24)),
                ],
              ),
            ),
          ),
          FractionalTranslation(
            translation: const Offset(0, -0.4),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    child: Icon(
                      Icons.account_circle,
                      size: 60,
                    ),
                  ),
                  Text(accountName),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Floating action button for treats.
class TreatsFloatingActionButton extends StatelessWidget {
  /// Default constructor for the [TreatsFloatingActionButton].
  const TreatsFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.cake),
    );
  }
}

/// Main bottom navigation bar.
class MainBottomNavigationBar extends HookWidget {
  /// Default constructor for the [MainBottomNavigationBar].
  const MainBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);

    return BottomNavigationBar(
      currentIndex: currentIndex.value,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'point hisotry',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'settings',
        ),
      ],
    );
  }
}
