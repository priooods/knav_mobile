import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static SharedPreferences? _sharedPrefs;

  init() async {
    _sharedPrefs ??= await SharedPreferences.getInstance();
  }

  //clear data set
  static clearing() {
    _sharedPrefs!.clear();
  }

  // Perintah Set Data
  static setString(String key, String value) =>
      _sharedPrefs!.setString(key, value);

  static setBoolean(String key, bool value) => _sharedPrefs!.setBool(key, value);

  // Perintah Get Data
  static String? getString(String key) => _sharedPrefs!.getString(key);

  static bool? getBoolean(String key) => _sharedPrefs!.getBool(key) ?? false;
}
