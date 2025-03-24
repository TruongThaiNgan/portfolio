import 'package:shared_preferences/shared_preferences.dart';

// ignore: camel_case_types
class _keys {
  static const String durationContactSent = 'duration-contact-sent';
}

class UserPrefs {
  factory UserPrefs() => instance;
  UserPrefs._internal();

  static final UserPrefs instance = UserPrefs._internal();
  static UserPrefs get I => instance;
  late SharedPreferences _prefs;
  Future initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // // theme
  // ThemeMode getTheme() {
  //   final value = _prefs.getString(_keys.theme);
  //   return ThemeMode.values.firstWhere(
  //     (e) => e.toString().toLowerCase() == '$value'.toLowerCase(),
  //     orElse: () => ThemeMode.system,
  //   );
  // }

  // void setTheme(ThemeMode value) {
  //   _prefs.setString(_keys.theme, value.toString().toLowerCase());
  // }

  int getDuration() {
    try {
      return _prefs.getInt(_keys.durationContactSent) ?? 0;
    } catch (_) {}
    return 0;
  }

  void setDuration(int? value) {
    if (value == null) {
      _prefs.remove(_keys.durationContactSent);
    } else {
      _prefs.setInt(_keys.durationContactSent, value);
    }
  }
}
