import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tandem/pages/navigator_page.dart';
import 'package:tandem/pages/shared/main_bloc.dart';
import 'package:tandem/services/theming/default_theme_data.dart';

class TandemApp extends StatelessWidget {
  const TandemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MainBloc(),
        child: MaterialApp(
            theme: DefaultThemeData.create(), home: const NavigatorPage()));
  }
}
