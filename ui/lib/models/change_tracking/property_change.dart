import 'package:equatable/equatable.dart';

import 'change_type.dart';

/// Contains information about the change made to an object in the system
class PropertyChange extends Equatable {
  /// A unique id value for this change
  final String id;

  /// The object id for the object being modified
  final String objectId;

  /// The collection where this object can be found
  final String collectionName;

  /// The name of the property being modified
  final String propertyName;

  /// The new value to be updated with
  final String newValue;

  /// The data type for the value being updated
  final String dataType;

  /// The type of change for this property change
  final ChangeType changeType;

  /// The UTC time for when this property change was made
  final DateTime dateModified;

  /// The user that made this change
  final String userId;

  PropertyChange(
      {required this.id,
      required this.objectId,
      required this.collectionName,
      required this.propertyName,
      required this.newValue,
      required this.dataType,
      required this.changeType,
      required this.dateModified,
      required this.userId}) {}

  @override
  List<Object?> get props => [
        id,
        objectId,
        collectionName,
        propertyName,
        newValue,
        dataType,
        changeType,
        dateModified,
        userId
      ];
}
