import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../page_base.dart';

class SettingsPage extends PageBase {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text("User Settings"),
      FloatingActionButton(onPressed: () {}),
    ]);
  }

  @override
  Widget getNavigationIcon(BuildContext context) => const Icon(Icons.settings);
  @override
  Widget getNavigationLabel(BuildContext context) => const Text("Settings");
}
