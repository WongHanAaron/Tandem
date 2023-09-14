import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../../models/user.dart';

/// Provides an instance of an Isar local database
abstract class IIsarProvider {
  Future<Isar> get();
}

// // Reference: https://medium.com/geekculture/isar-database-how-to-use-it-with-flutter-todo-app-978a2d7c85dd
class IsarProvider extends IIsarProvider {
  @override
  Future<Isar> get() async {
    final dir = await getApplicationDocumentsDirectory();
    return await Isar.open([UserSchema], directory: dir.path);
  }
}
