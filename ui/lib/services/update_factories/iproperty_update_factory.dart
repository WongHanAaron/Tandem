import 'package:tandem/models/change_tracking/property_update.dart';
import '../../models/change_tracking/property_change.dart';

/// The generic interface for an update factory
abstract class IPropertyUpdateFactory {
  /// Get the collection that will be updated by this property update factory
  String getHandledCollection();

  /// Creates a property update from a property change
  PropertyUpdate? create(PropertyChange propertyChange);
}
