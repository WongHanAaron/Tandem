import '../models/task.dart';

/// Provides state information about this journey
abstract class IJourneyRepository {
  void insertOrUpdate(Task task);
}

class JourneyRepository extends IJourneyRepository {
  @override
  void insertOrUpdate(Task task) {
    // TODO: implement insertOrUpdate
  }
}
