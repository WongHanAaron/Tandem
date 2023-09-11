import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tandem/pages/task/task_list.dart';

class KanbanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView(
        scrollDirection: Axis.horizontal,
        children: [TaskList("Test 1"), TaskList("Test 2"), TaskList("Test 3")]);
  }
}
