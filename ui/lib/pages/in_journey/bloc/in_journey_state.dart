import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:tandem/pages/in_journey/dashboard/dashboard_page.dart';
import 'package:tandem/pages/in_journey/page_base.dart';
import 'package:tandem/pages/in_journey/settings/settings_page.dart';
import 'package:tandem/pages/in_journey/task/kanban_page.dart';

class PageCollection {
  static final List<PageBase> widgets = [
    DashboardPage(),
    KanbanPage(),
    SettingsPage()
  ];
}

class InJourneyState extends Equatable {
  int selectedPageIndex = 0;

  InJourneyState({required this.selectedPageIndex});

  List<PageBase> getPages() => PageCollection.widgets;

  Widget getCurrentPage() {
    return getPages()[selectedPageIndex];
  }

  @override
  List<Object?> get props => [selectedPageIndex];
  InJourneyState copyWith({int? selectedPageIndex}) {
    return InJourneyState(
        selectedPageIndex: selectedPageIndex ?? this.selectedPageIndex);
  }
}
