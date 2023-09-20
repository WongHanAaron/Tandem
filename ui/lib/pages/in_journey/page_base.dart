import 'package:flutter/material.dart';

/// The base class for a page within the in journey state
abstract class PageBase extends StatelessWidget {
  const PageBase({super.key});

  /// gets the navigation icon
  Widget getNavigationIcon(BuildContext context);

  /// accesses the label for the navigation item
  Widget getNavigationLabel(BuildContext context);

  NavigationRailDestination getNavigationRailDestination(BuildContext context) {
    return NavigationRailDestination(
        icon: getNavigationIcon(context), label: getNavigationLabel(context));
  }
}
