class InJourneyEvent {}

/// Event for when a page is navigated to
class PageNavigationEvent extends InJourneyEvent {
  PageNavigationEvent(this.selectedPageIndex);

  /// The index of navigation rail page that is currently selected
  int selectedPageIndex;
}

/// Event for when the settings button is clicked
class SettingsClickedEvent extends InJourneyEvent {}
