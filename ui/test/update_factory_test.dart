import 'package:flutter_test/flutter_test.dart';
import 'package:tandem/models/change_tracking/change_type.dart';
import 'package:tandem/models/change_tracking/property_change.dart';
import 'package:tandem/models/user.dart';
import 'package:tandem/services/update_factories/user_update_factory.dart';

main() {
  test("User Update Factory", () {
    final factory = UserUpdateFactory();

    final change = PropertyChange(
        id: 0,
        objectId: 0,
        collectionName: UserUpdateFactory.Name,
        propertyName: NameofUser.fieldFirstName,
        newValue: "Bob",
        dataType: "string",
        changeType: ChangeType.setValue,
        dateModified: DateTime.now().toUtc(),
        userId: 0);

    final updater = factory.create(change);

    final user = User();
    user.firstName = "Alice";

    expect(user.firstName != change.newValue, true);

    expect(updater != null, true);

    updater!.update(user);

    expect(user.firstName == change.newValue, true);
  });
}
