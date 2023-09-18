import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tandem/pages/shared/main_bloc.dart';
import 'package:tandem/pages/shared/main_event.dart';
import 'package:tandem/pages/shared/main_state.dart';

class ConnectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return Center(
              child: ElevatedButton(
            child: const Text("Start New"),
            onPressed: () {
              context.read<MainBloc>().add(MainEvent());
            },
          ));
        },
      ),
    );
  }
}
