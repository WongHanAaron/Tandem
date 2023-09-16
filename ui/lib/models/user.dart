import 'package:isar/isar.dart';
import 'package:nameof_annotation/nameof_annotation.dart';

/// Enables Isar
part 'user.g.dart';

/// Enables nameof
part 'user.nameof.dart';

/// Describes a single user for this specific journey
@collection
@nameof
class User {
  Id id = Isar.autoIncrement;

  String? firstName;

  String? middleName;

  String? lastName;

  /// The path to the image for the user
  String? userIconPath;
}
