import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class KanbanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );
    return ListView(scrollDirection: Axis.horizontal, children: [
      Card(
        color: theme.colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("Test 1", style: style),
        ),
      ),
      Card(
        color: theme.colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Test 2",
            style: style,
          ),
        ),
      )
    ]);
  }
}
