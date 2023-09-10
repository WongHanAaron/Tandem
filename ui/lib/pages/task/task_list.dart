import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  TaskList(String this.name, {super.key});

  String? name;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Card(
      color: theme.colorScheme.onSecondary,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(name ?? "NA", style: style),
      ),
    );
  }
}
