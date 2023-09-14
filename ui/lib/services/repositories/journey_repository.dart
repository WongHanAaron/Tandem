import 'package:tandem/models/change_tracking/property_change.dart';

import '../models/user.dart';

/// Provides state information about this journey
abstract class IJourneyRepository {
  /// Updates the repository with the specific property changed
  void update(PropertyChange propertyChange);

  /// Create a new user from this passed in object
  void createNewUser(User user);

  void removeUser(Id userId);
}

class JourneyRepository extends IJourneyRepository {}
