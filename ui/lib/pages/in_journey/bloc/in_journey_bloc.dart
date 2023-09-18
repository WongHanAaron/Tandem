import 'package:bloc/bloc.dart';
import 'package:tandem/pages/in_journey/bloc/in_journey_event.dart';
import 'package:tandem/pages/in_journey/bloc/in_journey_state.dart';

class InJourney extends Bloc<InJourneyEvent, InJourneyState> {
  InJourney() : super(InJourneyState()) {}
}
