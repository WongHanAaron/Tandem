import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tandem/pages/start_journey/bloc/start_journey_bloc.dart';
import 'package:tandem/pages/start_journey/start_journey_page.dart';
import 'package:tandem/services/theming/default_theme_data.dart';

class TandemApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => StartJourneyBloc(),
        child: MaterialApp(home: StartJourneyPage()));
    // return MaterialApp(
    //     title: "Tandem",
    //     theme: DefaultThemeData.create(),
    //     home: BlocProvider(
    //       create: (context) => StartJourneyBloc(),
    //       child: StartJourneyPage(),
    //     ));
  }
}
