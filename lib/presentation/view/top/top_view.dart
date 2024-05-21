import 'package:flutter/material.dart';
import 'package:point_treat/presentation/view/top/widgets/account_card.dart';
import 'package:point_treat/presentation/view/top/widgets/ticket_list.dart';
import 'package:point_treat/presentation/view/top/widgets/treats_floating_action_button.dart';

/// top view.
class TopView extends StatelessWidget {
  /// Default constructor for the [TopView].
  const TopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // ToDo: SafeAreaを毎画面書くのは面倒なので、mixin等で共通化したい
      body: SafeArea(
        child: Column(
          children: [
            AccountCard(accountName: 'たろう', point: 10000),
            TicketList(),
          ],
        ),
      ),
    );
  }
}
