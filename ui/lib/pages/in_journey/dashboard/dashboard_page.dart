import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spannable_grid/spannable_grid.dart';
import 'package:tandem/pages/in_journey/page_base.dart';

// Reference SpannableGrid: https://pub.dev/packages/spannable_grid
class DashboardPage extends PageBase {
  @override
  Widget build(BuildContext context) {
    return SpannableGrid(cells: [
      SpannableGridCellData(
          id: "Test Cell 1",
          column: 1,
          row: 1,
          child: Row(children: [Text('Dashboard Page')]))
    ], columns: 3, rows: 3);
  }

  @override
  Widget getNavigationIcon(BuildContext context) =>
      const Icon(Icons.dashboard_sharp);

  @override
  Widget getNavigationLabel(BuildContext context) => const Text("Dashboard");
}
