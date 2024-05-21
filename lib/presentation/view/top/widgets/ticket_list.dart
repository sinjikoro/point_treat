import 'package:flutter/material.dart';

/// Ticket list.
class TicketList extends StatelessWidget {
  /// Default constructor for the [TicketList].
  const TicketList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('チケット$index'),
            subtitle: Text('チケットの説明$index'),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
