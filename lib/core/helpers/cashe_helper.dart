import 'package:shared_preferences/shared_preferences.dart';

class CasheHelper {
  static late final SharedPreferences sharedPref;

  static Future casheIintialize() async {
    sharedPref = await SharedPreferences.getInstance();
  }

  static Future<bool> savedDate(
      {required String key, required dynamic value}) async {
    if (value is String) {
      return await sharedPref.setString(key, value);
    } else if (value is double) {
      return await sharedPref.setDouble(key, value);
    } else if (value is bool) {
      return await sharedPref.setBool(key, value);
    } else {
      return await sharedPref.setInt(key, value);
    }
  }

  static dynamic getData({required String key}) {
    return sharedPref.get(key);
  }
}
