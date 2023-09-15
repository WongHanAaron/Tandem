import 'package:flutter_test/flutter_test.dart';
import 'package:tandem/models/change_tracking/property_update.dart';
import 'package:tandem/models/user.dart';

main() {
  test("Property Update Test", () {
    final update = TypedPropertyUpdate<User>();

    final newName = "John";
    update.updateMethod = (p) {
      p.firstName = newName;
    };

    final user = User();
    user.firstName = "Bill";

    expect(user.firstName == "Bill", true);

    update.updateMethod!(user);

    expect(user.firstName == newName, true);
  });
}
