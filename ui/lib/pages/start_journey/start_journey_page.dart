import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tandem/pages/start_journey/bloc/start_journey_bloc.dart';
import 'package:tandem/pages/start_journey/bloc/start_journey_event.dart';
import 'package:tandem/pages/start_journey/bloc/start_journey_state.dart';

class StartJourneyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<StartJourneyBloc, StartJourneyState>(
        builder: (context, state) {
          return Center(
              child: ElevatedButton(
            child: const Text("Start New"),
            onPressed: () {
              context.read<StartJourneyBloc>().add(StartJourneyEvent());
            },
          ));
        },
      ),
    );
  }
}
