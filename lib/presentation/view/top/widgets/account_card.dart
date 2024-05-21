import 'package:flutter/material.dart';

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
