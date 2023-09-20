import 'package:equatable/equatable.dart';
import 'package:tandem/pages/in_journey/dashboard/dashboard_page.dart';
import 'package:tandem/pages/in_journey/page_base.dart';
import 'package:tandem/pages/in_journey/task/kanban_page.dart';

class InJourneyState extends Equatable {
  int selectedPageIndex = 0;

  final List<PageBase> _widgets = [];

  InJourneyState(this.selectedPageIndex) {
    _widgets.add(DashboardPage());
    _widgets.add(KanbanPage());
  }

  List<PageBase> getPages() => _widgets;

  @override
  List<Object?> get props => [selectedPageIndex];
}
