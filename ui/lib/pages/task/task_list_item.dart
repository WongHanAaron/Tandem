import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: ((value) => {})),
        Text("Task")
      ],
    );
  }
}
