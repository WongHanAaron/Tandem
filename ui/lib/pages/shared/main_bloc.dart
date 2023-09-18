import 'package:bloc/bloc.dart';
import 'main_state.dart';
import 'main_event.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState()) {
    on<MainEvent>(
      (event, emit) {
        state.state = OverallState.inJourney;
        emit(state);
      },
    );
  }
}
