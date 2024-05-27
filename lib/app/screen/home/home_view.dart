import 'package:flutter/material.dart';
import 'package:point_treat/app/screen/home/parts/account_card.dart';
import 'package:point_treat/app/screen/home/parts/ticket_list.dart';

/// home view.
class HomeView extends StatelessWidget {
  /// Default constructor for the [HomeView].
  const HomeView({super.key});

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
