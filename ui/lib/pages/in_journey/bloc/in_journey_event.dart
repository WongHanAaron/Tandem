class InJourneyEvent {}

class PageNavigationEvent extends InJourneyEvent {
  PageNavigationEvent(this.selectedPageIndex);

  /// The index of navigation rail page that is currently selected
  int selectedPageIndex;
}
