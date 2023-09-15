import 'package:tandem/models/change_tracking/property_change.dart';
import 'package:isar/isar.dart';
import 'package:tandem/models/user.dart';
import 'package:tandem/services/repositories/update_handlers/collection_update_handler.dart';

/// Handles updates for the user collection
class UserUpdateHandler extends CollectionUpdateHandler {
  @override
  String getHandledCollection() {
    return "User";
  }

  @override
  Future update(Isar isar, int id, List<PropertyChange> changes) async {
    final user = await isar.users.get(id);

    if (user == null) {
      throw Exception("User at id '$id' does not exist");
    }

    changes.forEach((element) {});
  }
}
