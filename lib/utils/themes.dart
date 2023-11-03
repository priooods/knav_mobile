import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:knavm/utils/variable_color.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Themes with ChangeNotifier {
  final String key = 'theme';
  late SharedPreferences prefs;
  late bool _isDark = false;

  ThemeData lightTheme(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
            foregroundColor: Colors.black87,
            backgroundColor: Colors.white,
            elevation: 0,
            titleTextStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.black87)),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            elevation: 20,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedLabelStyle:
                const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
            unselectedLabelStyle:
                const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
            unselectedItemColor: Colors.black38,
            selectedItemColor: Colors.indigo[900]),
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
            hintStyle: const TextStyle(
            color: Colors.grey, fontWeight: FontWeight.w500),
            contentPadding: const EdgeInsets.fromLTRB(10.0, 15.0, 15.0, 10.0),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: VariableColors().red)),
            errorStyle: const TextStyle(
                color: Colors.red, fontWeight: FontWeight.w600, fontSize: 14.0),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: VariableColors().darkPrimary)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: VariableColors().red)),
            fillColor: Colors.transparent,
            filled: true,
            isDense: false
        ));
  }

  ThemeData darkTheme(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            elevation: 0,
            titleTextStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.white70)),
        scaffoldBackgroundColor: Colors.black,
        inputDecorationTheme: InputDecorationTheme(
            hintStyle: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w500),
            contentPadding: const EdgeInsets.fromLTRB(10.0, 15.0, 15.0, 10.0),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: VariableColors().red)),
            errorStyle: const TextStyle(
                color: Colors.red, fontWeight: FontWeight.w600, fontSize: 14.0),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: VariableColors().lightPrimary)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: VariableColors().red)),
            fillColor: Colors.transparent,
            filled: true,
            isDense: false)
        );
  }

  Themes() {
    loadPref();
  }

  bool get isDark => _isDark;

  initPref() async {
    prefs = await SharedPreferences.getInstance();
  }

  changeTheme() {
    _isDark = !_isDark;
    savePref();
    notifyListeners();
  }

  savePref() async {
    prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, _isDark);
  }

  loadPref() async {
    prefs = await SharedPreferences.getInstance();
    _isDark = prefs.getBool(key) ??
        bool.parse(dotenv.env['THEME_DARK'] ?? 'false', caseSensitive: false);
    notifyListeners();
  }
}
