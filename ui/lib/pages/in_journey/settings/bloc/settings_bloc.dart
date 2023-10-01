import 'package:bloc/bloc.dart';
import 'package:tandem/services/repositories/journey_repository.dart';
import 'settings_state.dart';
import 'package:tandem/pages/in_journey/settings/bloc/settings_event.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  JourneyRepository repository;

  SettingsBloc(this.repository) : super(SettingsState()) {
    on<AddUserEvent>((event, emit) {});
  }
}
