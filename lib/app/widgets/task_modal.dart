import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

/// Task modal.
class TaskModal extends StatelessWidget {
  /// Constructor.
  const TaskModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
            child: Text('done task!!'),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (_, index) => Slidable(
                endActionPane: const ActionPane(
                  motion: ScrollMotion(),
                  children: [
                    _SlidableAction(),
                  ],
                ),
                child: ListTile(
                  title: Text('Task $index'),
                ),
              ),
              itemCount: 10,
            ),
          ),
        ],
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
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      icon: Icons.check,
      label: 'check',
    );
  }
}
