import 'package:isar/isar.dart';
import 'package:tandem/models/change_tracking/property_change.dart';

import '../../models/user.dart';
import 'isar_provider.dart';

/// Provides state information about this journey
abstract class IJourneyRepository {
  /// Startup the repository
  Future startUp();

  /// Updates the repository with the specific property changed
  Future update(PropertyChange propertyChange);

  /// Create a new user from this passed in object
  Future createNewUser(User user);

  /// Removes the user at the specified user id
  Future removeUser(int userId);

  /// Gets the users, optionally at the id specified
  Future<List<User>> getUsers({List<int>? userIds});

  /// Wipes the database of contents
  Future clear();
}

class JourneyRepository extends IJourneyRepository {
  Isar? _isar;

  @override
  Future startUp() async {
    _isar = await IsarProvider().get();
  }

  @override
  Future createNewUser(User user) async {
    await _isar!.writeTxn(() async {
      await _isar!.users.put(user);
    });
  }

  @override
  Future removeUser(int userId) async {
    await _isar!.users.delete(userId);
  }

  @override
  Future update(PropertyChange propertyChange) async {
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

  @override
  Future clear() async {
    await _isar!.close(deleteFromDisk: true);
  }
}
