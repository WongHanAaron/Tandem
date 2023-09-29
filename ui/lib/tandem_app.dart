import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tandem/pages/in_journey/bloc/in_journey_bloc.dart';
import 'package:tandem/pages/in_journey/settings/bloc/settings_bloc.dart';
import 'package:tandem/pages/navigator_page.dart';
import 'package:tandem/pages/shared/main_bloc.dart';
import 'package:tandem/services/repositories/journey_repository.dart';
import 'package:tandem/services/theming/default_theme_data.dart';

class TandemApp extends StatelessWidget {
  const TandemApp({super.key});

  static final repository = JourneyRepository();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<MainBloc>(
            create: (BuildContext context) => MainBloc(),
          ),
          BlocProvider<InJourneyBloc>(
            create: (BuildContext context) => InJourneyBloc(),
          ),
          BlocProvider<SettingsBloc>(
              create: (BuildContext context) => SettingsBloc(
                    repository,
                  ))
        ],
        child: MaterialApp(
            theme: DefaultThemeData.create(), home: const NavigatorPage()));
  }
}
