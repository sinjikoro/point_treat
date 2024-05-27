import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

/// Ticket list.
class TicketList extends StatelessWidget {
  /// Default constructor for the [TicketList].
  const TicketList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Slidable(
            endActionPane: const ActionPane(
              motion: ScrollMotion(),
              children: [
                _SlidableAction(),
              ],
            ),
            child: ListTile(
              title: Text('チケット$index'),
              subtitle: Text('チケットの説明$index'),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}

class _SlidableAction extends StatelessWidget {
  const _SlidableAction();

  @override
  Widget build(BuildContext context) {
    return const SlidableAction(
      onPressed: null,
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      icon: Icons.check,
      label: 'check',
    );
  }
}
