import 'package:equatable/equatable.dart';

/// Describes the high-level state of the app
enum OverallState {
  /// Connect to Journey indicates that the user still has to connect to
  /// a journey before the app's normal function can be operated
  connectToJourney,

  /// In Journey indicates that a user has connected to a journey and is in
  /// normal operation of the application
  inJourney
}

/// Contains the high-level state information for the current session
class MainState extends Equatable {
  OverallState state = OverallState.connectToJourney;

  @override
  List<Object?> get props => [state];
}
