/// Abstract class for performing the required updates on the object
abstract class PropertyUpdate {
  /// Performs the update on the passed in generic object
  void update(Object target);
}

/// Class for describing the change made to the class
class TypedPropertyUpdate<TModel> extends PropertyUpdate {
  /// Contains the logic for performing the property update to the specified
  /// property
  Function(TModel)? updateMethod;

  @override
  void update(Object target) {
    if (target == null) return;
    if (target is! TModel) return;
    if (updateMethod == null) return;
    updateProc(target as TModel);
  }

  /// Performs the update on the targetted object
  void updateProc(TModel target) {
    updateMethod!(target);
  }
}
