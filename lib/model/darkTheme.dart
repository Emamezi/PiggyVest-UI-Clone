import 'package:shared_preferences/shared_preferences.dart';

class DarkThemePreference {
  static const String = 'THEME_PREF';

  setDarkTheme(bool value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('THEME_PREF', value);
  }

  Future<bool> getDarkTheme() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('THEME_PREF') ?? false;
  }
}
