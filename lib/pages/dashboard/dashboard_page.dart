import 'package:flutter/cupertino.dart';
import 'package:spannable_grid/spannable_grid.dart';

// Reference SpannableGrid: https://pub.dev/packages/spannable_grid
class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SpannableGrid(cells: [
      SpannableGridCellData(
          id: "Test Cell 1",
          column: 1,
          row: 1,
          child: Row(children: [Text('Test')]))
    ], columns: 3, rows: 3);
  }
}
