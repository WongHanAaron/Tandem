import 'package:bloc/bloc.dart';
import 'package:tandem/pages/in_journey/bloc/in_journey_event.dart';
import 'package:tandem/pages/in_journey/bloc/in_journey_state.dart';

class InJourneyBloc extends Bloc<InJourneyEvent, InJourneyState> {
  InJourneyBloc() : super(InJourneyState(selectedPageIndex: 0)) {
    on<PageNavigationEvent>((event, emit) {
      emit(state.copyWith(selectedPageIndex: event.selectedPageIndex));
    });
  }
}
