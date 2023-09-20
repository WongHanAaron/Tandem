import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tandem/pages/in_journey/page_base.dart';
import 'package:tandem/pages/in_journey/task/task_list.dart';

class KanbanPage extends PageBase {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView(scrollDirection: Axis.horizontal, children: [
      TaskList("To do"),
      TaskList("In Progress"),
      TaskList("Done")
    ]);
  }

  @override
  Widget getNavigationIcon(BuildContext context) => const Icon(Icons.task);

  @override
  Widget getNavigationLabel(BuildContext context) => const Text("Tasks");
}
