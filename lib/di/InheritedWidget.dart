
import 'package:flutter/material.dart';
import '../user_pref/user_preferences.dart';

class UserPreferencesProvider extends InheritedWidget {
  final UserPreferences userPreferences;

  const UserPreferencesProvider({
    Key? key,
    required this.userPreferences,
    required Widget child,
  }) : super(key: key, child: child);

  static UserPreferencesProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UserPreferencesProvider>();
  }

  @override
  bool updateShouldNotify(UserPreferencesProvider oldWidget) {
    return oldWidget.userPreferences != userPreferences;
  }
}
