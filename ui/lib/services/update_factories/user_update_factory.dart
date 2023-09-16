import 'package:tandem/models/change_tracking/property_update.dart';
import 'package:tandem/models/change_tracking/property_change.dart';
import 'package:tandem/services/update_factories/iproperty_update_factory.dart';

import '../../models/user.dart';

class UserUpdateFactory extends IPropertyUpdateFactory {
  @override
  PropertyUpdate? create(PropertyChange propertyChange) {
    switch (propertyChange.propertyName) {
      case NameofUser.fieldFirstName:
        return TypedPropertyUpdate<User>(
            (u) => u.firstName = propertyChange.newValue);
      case NameofUser.fieldMiddleName:
        return TypedPropertyUpdate<User>(
            (u) => u.middleName = propertyChange.newValue);
      case NameofUser.fieldLastName:
        return TypedPropertyUpdate<User>(
            (u) => u.lastName = propertyChange.newValue);
      case NameofUser.fieldUserIconPath:
        return TypedPropertyUpdate<User>(
            (u) => u.userIconPath = propertyChange.newValue);
    }
    return null;
  }

  static const String Name = "User";

  @override
  String getHandledCollection() => Name;
}
