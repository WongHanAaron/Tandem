import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  TaskList(String this.name, {super.key});

  String? name;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displaySmall!.copyWith(fontSize: 20);

    return Card(
      child: SizedBox(
        width: 250,
        child: Row(children: [
          Column(
            children: [Text(name!)],
          )
        ]),
      ),
    );
  }
}
