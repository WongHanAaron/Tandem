import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tandem/pages/dashboard/dashboard_page.dart';
import 'package:tandem/pages/settings/settings_page.dart';
import 'package:tandem/pages/task/kanban_page.dart';
import 'package:tandem/services/theming/default_theme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Tandem',
        theme: DefaultThemeData.create(),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = DashboardPage();
        break;
      case 1:
        page = KanbanPage();
        break;
      case 2:
        page = DashboardPage();
        break;
      case 3:
        page = SettingsPage();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    final theme = Theme.of(context);

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
              labelType: NavigationRailLabelType.all,
              groupAlignment: 0,
              extended: false,
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.dashboard_sharp),
                  label: Text('Dashboard'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.task),
                  label: Text('Tasks'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings),
                  label: Text('Settings'),
                )
              ],
              selectedIndex: selectedIndex,
              onDestinationSelected: (value) {
                setState(() {
                  selectedIndex = value;
                });
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
  }
}
