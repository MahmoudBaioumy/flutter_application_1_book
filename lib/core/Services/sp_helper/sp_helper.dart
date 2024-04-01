import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencHelper {
  static SharedPreferences? _sharedPreferences;

  static init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> saveData(
      {required dynamic key, required dynamic value}) async {
    if (value is String) {
      return await _sharedPreferences!.setString(key, value);
    }
    if (value is bool) {
      return await _sharedPreferences!.setBool(key, value);
    }
    if (value is int) {
      return await _sharedPreferences!.setInt(key, value);
    }
    if (value is double) {
      return await _sharedPreferences!.setDouble(key, value);
    } else {
      return false;
    }
  }

  static dynamic getData({required dynamic key}) {
    return _sharedPreferences?.get(key);
  }

  static Future<bool> removeData({required String key}) async {
    return await _sharedPreferences!.remove(key);
  }

  static bool? getBool({required String key}) {
    return _sharedPreferences?.getBool(key);
  }
}
