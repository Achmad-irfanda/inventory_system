// apps language provider

import 'package:inventory_system/apps_common_libs.dart';

class AppsLanguageProvider extends ChangeNotifier {
  final String key = "language";
  late SharedPreferences _preferences;
  late bool isId;

  bool get id => isId;

  AppsLanguageProvider() {
    isId = true;
    _loadPreferences();
  }
  _initialPreferences() async {
    _preferences = await SharedPreferences.getInstance();
  }

  _savePreferences() async {
    await _initialPreferences();
    _preferences.setBool(key, isId);
  }

  _loadPreferences() async {
    return _initialPreferences();
  }

  togleChangeLanguage() {
    isId = !isId;
    _savePreferences();
    notifyListeners();
  }
}
