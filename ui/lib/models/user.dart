import 'package:isar/isar.dart';
part 'user.g.dart';

/// Describes a single user for this specific journey
@collection
class User {
  Id id = Isar.autoIncrement;

  String? firstName;
  String? middleName;
  String? lastName;

  /// The path to the image for the user
  String? userIconPath;
}
