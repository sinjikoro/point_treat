import 'package:flutter/material.dart';

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
