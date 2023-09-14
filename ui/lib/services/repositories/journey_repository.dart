import 'package:isar/isar.dart';
import 'package:tandem/models/change_tracking/property_change.dart';

import '../../models/user.dart';
import 'isar_provider.dart';

/// Provides state information about this journey
abstract class IJourneyRepository {
  /// Startup the repository
  void startUp();

  /// Updates the repository with the specific property changed
  void update(PropertyChange propertyChange);

  /// Create a new user from this passed in object
  void createNewUser(User user);

  /// Removes the user at the specified user id
  void removeUser(int userId);

  Future<List<User>> getUsers({List<int>? userIds});
}

class JourneyRepository extends IJourneyRepository {
  Isar? _isar;

  @override
  void startUp() async {
    _isar = await IsarProvider().get();
  }

  @override
  void createNewUser(User user) {
    _isar!.users.put(user);
  }

  @override
  void removeUser(int userId) {
    _isar!.users.delete(userId);
  }

  @override
  void update(PropertyChange propertyChange) {
    // TODO: implement update
  }

  @override
  Future<List<User>> getUsers({List<int>? userIds}) async {
    if (userIds != null) {
      final returned = await _isar!.users.getAll(userIds);
      return <User>[
        for (var s in returned)
          if (s != null) s
      ];
    } else {
      return _isar!.users.where().findAll();
    }
  }
}
