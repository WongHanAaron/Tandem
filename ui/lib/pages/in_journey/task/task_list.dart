import 'package:flutter/material.dart';
import 'package:tandem/pages/in_journey/task/task_list_item.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Row(
              children: [Text(name!)],
            ),
            Expanded(
                child: ListView(
              scrollDirection: Axis.vertical,
              reverse: false,
              children: [
                TaskListItem(),
                TaskListItem(),
                TaskListItem(),
              ],
            )),
          ]),
        ),
      ),
    );
  }
}
