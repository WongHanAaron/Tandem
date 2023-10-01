import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tandem/pages/in_journey/settings/bloc/settings_bloc.dart';

import '../page_base.dart';
import 'bloc/settings_event.dart';

class SettingsPage extends PageBase {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text("User Settings"),
      FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            context.read<SettingsBloc>().add(AddUserEvent());
          }),
    ]);
  }

  @override
  Widget getNavigationIcon(BuildContext context) => const Icon(Icons.settings);
  @override
  Widget getNavigationLabel(BuildContext context) => const Text("Settings");
}
