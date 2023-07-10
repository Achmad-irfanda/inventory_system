// apps theme provider

import 'package:inventory_system/apps_common_libs.dart';

class AppsThemeNotifier extends ChangeNotifier {
  final String key = "theme";
  late SharedPreferences _preferences;
  late bool isDarkTheme;

  bool get darkmode => isDarkTheme;

  AppsThemeNotifier() {
    isDarkTheme = true;
    _loadPreferences();
  }

  _intialPreferences() async {
    _preferences = await SharedPreferences.getInstance();
  }

  _savePreferences() async {
    await _intialPreferences();
    _preferences.setBool(key, isDarkTheme);
  }

  _loadPreferences() async {
    return _intialPreferences();
  }

  togleChangeTheme() {
    isDarkTheme = !isDarkTheme;
    _savePreferences();
    notifyListeners();
  }
}
