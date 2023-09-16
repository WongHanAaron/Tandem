import 'package:bloc/bloc.dart';
import 'package:tandem/pages/start_journey/bloc/start_journey_event.dart';
import 'package:tandem/pages/start_journey/bloc/start_journey_state.dart';

class StartJourneyBloc extends Bloc<StartJourneyEvent, StartJourneyState> {
  StartJourneyBloc() : super(StartJourneyState()) {
    on<StartJourneyEvent>((event, emit) {
      print("Start clicked");
    });
  }
}
