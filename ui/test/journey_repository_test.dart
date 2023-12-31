import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:tandem/models/user.dart';
import 'package:tandem/services/repositories/journey_repository.dart';

main() {
  test("Create User", () async {
    final repo = await getRepository();

    var users = await repo.getUsers();

    expect(users.isEmpty, true);

    var user = User();
    user.firstName = "Bob";
    user.lastName = "Ross";
    await repo.startWrite(() => repo.createNewUser(user));

    users = await repo.getUsers();

    expect(users.length == 1, true);

    var queriedSingle = await repo.getUsers(userIds: [users.elementAt(0).id]);

    expect(queriedSingle.length == 1, true);

    expect(queriedSingle.elementAt(0).id == users.elementAt(0).id, true);

    repo.clearAndClose();
  });

  test("Remove User", () async {
    final repo = await getRepository();

    var users = await repo.getUsers();

    expect(users.isEmpty, true);

    var user = User();
    user.firstName = "Bob";
    user.lastName = "Ross";
    await repo.startWrite(() => repo.createNewUser(user));

    users = await repo.getUsers();

    expect(users.length == 1, true);

    var queriedSingle = await repo.getUsers(userIds: [users.elementAt(0).id]);

    expect(queriedSingle.length == 1, true);

    expect(queriedSingle.elementAt(0).id == users.elementAt(0).id, true);

    await repo.startWrite(() => repo.removeUser(queriedSingle.elementAt(0).id));

    users = await repo.getUsers();

    expect(users.isEmpty, true);

    repo.clearAndClose();
  });
}

Future<IJourneyRepository> getRepository() async {
  await Isar.initializeIsarCore(download: true);

  var repo = JourneyRepository();

  await repo.startUp();

  await repo.clearAndClose();

  repo = JourneyRepository();

  await repo.startUp();

  return repo;
}
