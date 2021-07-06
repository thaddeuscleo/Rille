import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rille/utils/constants.dart';

class ThemeProvider with ChangeNotifier {
  late ThemeData _themeData;

  ThemeData _darkThemeData = ThemeData(
    accentColor: Colors.red,
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
  );

  ThemeData _lightThemeData = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    accentColor: Colors.pink,
    brightness: Brightness.light,
  );

  ThemeProvider(bool isDarkMode) {
    this._themeData = isDarkMode ? _darkThemeData : _lightThemeData;
  }

  void changeTheme(bool isDarkMode) {
    this._themeData = isDarkMode ? _darkThemeData : _lightThemeData;
    notifyListeners();
  }

  ThemeData get getTheme => _themeData;
}
