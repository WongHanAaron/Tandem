import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/in_journey_bloc.dart';
import 'bloc/in_journey_event.dart';
import 'bloc/in_journey_state.dart';

class InJourneyPage extends StatelessWidget {
  const InJourneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InJourneyBloc, InJourneyState>(
      builder: (context, state) {
        final pages = state.getPages();
        final page = pages.elementAt(state.selectedPageIndex);
        final theme = Theme.of(context);
        final selectionButtons =
            pages.map((p) => p.getNavigationRailDestination(context)).toList();

        return Scaffold(
          body: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                  backgroundColor: theme.colorScheme.primary,
                  selectedIconTheme: theme.primaryIconTheme
                      .copyWith(color: theme.colorScheme.secondary),
                  unselectedIconTheme: theme.primaryIconTheme
                      .copyWith(color: theme.colorScheme.secondary),
                  selectedLabelTextStyle: theme.textTheme.bodyLarge!
                      .copyWith(color: theme.colorScheme.secondary),
                  labelType: NavigationRailLabelType.selected,
                  groupAlignment: -1,
                  extended: false,
                  destinations: selectionButtons,
                  trailing: IconButton(
                      icon: const Icon(Icons.more_horiz),
                      onPressed: () => {
                            context
                                .read<InJourneyBloc>()
                                .add(SettingsClickedEvent())
                          }),
                  selectedIndex: state.selectedPageIndex,
                  onDestinationSelected: (value) {
                    context
                        .read<InJourneyBloc>()
                        .add(PageNavigationEvent(value));
                  },
                ),
              ),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.background,
                  child: page,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
