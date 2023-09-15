import 'package:isar/isar.dart';
import 'package:tandem/services/reflector.dart';
part 'user.g.dart';

/// Describes a single user for this specific journey
@collection
@reflector
class User {
  Id id = Isar.autoIncrement;

  String? firstName;
  String? middleName;
  String? lastName;

  /// The path to the image for the user
  String? userIconPath;
}
