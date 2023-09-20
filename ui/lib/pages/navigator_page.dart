import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tandem/pages/connect_to_journey/connect/connect_page.dart';
import 'package:tandem/pages/in_journey/bloc/in_journey_bloc.dart';
import 'package:tandem/pages/in_journey/in_journey_page.dart';
import 'package:tandem/pages/shared/main_bloc.dart';
import 'package:tandem/pages/shared/main_state.dart';

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          if (state.state == OverallState.connectToJourney) {
            return const ConnectPage();
          } else {
            return const InJourneyPage();
          }
        },
      ),
    );
  }
}
