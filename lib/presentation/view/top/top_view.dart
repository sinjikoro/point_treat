import 'package:flutter/material.dart';
import 'package:point_treat/presentation/view/top/parts/account_card.dart';
import 'package:point_treat/presentation/view/top/parts/ticket_list.dart';

/// top view.
class TopView extends StatelessWidget {
  /// Default constructor for the [TopView].
  const TopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AccountCard(accountName: 'たろう', point: 10000),
        TicketList(),
      ],
    );
  }
}
