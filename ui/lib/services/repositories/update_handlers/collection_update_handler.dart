import 'package:isar/isar.dart';
import 'package:tandem/models/change_tracking/property_change.dart';

/// Updates the database based for a specific
abstract class CollectionUpdateHandler {
  /// Gets the collection that is handled by this updater
  String getHandledCollection();

  /// Updates the database based on the PropertyChange object
  Future update(Isar isar, int id, List<PropertyChange> changes);
}
