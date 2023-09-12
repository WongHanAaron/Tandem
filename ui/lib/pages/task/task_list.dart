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
          child: Scaffold(
            appBar: AppBar(
              title: Text(name!),
              notificationPredicate: (ScrollNotification notification) {
                return notification.depth == 1;
              },
              scrolledUnderElevation: 4.0,
              shadowColor: Theme.of(context).shadowColor,
              actions: [
                IconButton(
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  icon: const Icon(Icons.more_horiz_rounded),
                )
              ],
            ),
            body: ListView(),
          )),
    );
  }
}
