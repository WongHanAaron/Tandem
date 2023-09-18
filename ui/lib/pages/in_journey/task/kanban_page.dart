import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tandem/pages/in_journey/task/task_list.dart';

class KanbanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView(scrollDirection: Axis.horizontal, children: [
      TaskList("To do"),
      TaskList("In Progress"),
      TaskList("Done")
    ]);
  }
}
