import 'package:equatable/equatable.dart';
import 'package:tandem/pages/in_journey/dashboard/dashboard_page.dart';
import 'package:tandem/pages/in_journey/page_base.dart';
import 'package:tandem/pages/in_journey/task/kanban_page.dart';

final List<PageBase> widgets = [DashboardPage(), KanbanPage()];

class InJourneyState extends Equatable {
  int selectedPageIndex = 0;

  InJourneyState({required this.selectedPageIndex});

  List<PageBase> getPages() => widgets;

  @override
  List<Object?> get props => [selectedPageIndex];
  InJourneyState copyWith({int? selectedPageIndex, List<PageBase>? widgets}) {
    return InJourneyState(
        selectedPageIndex: selectedPageIndex ?? this.selectedPageIndex);
  }
}
