import 'package:shared_preferences/shared_preferences.dart';

import '../../constants.dart';

class SharedPreferencesService {
  static late SharedPreferences _instance;

  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  Future<void> setLoggedIn(bool value) async {
    await _instance.setBool(isLoggedInKey, value);
  }

  Future<bool> isLoggedIn() async {
    return _instance.getBool(isLoggedInKey) ?? false;
  }

  Future<void> logout() async {
    await _instance.remove(isLoggedInKey);
  }
}
