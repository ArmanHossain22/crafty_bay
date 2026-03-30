import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier
{
  ThemeData _currentTheme = ThemeData();

  final List<ThemeData> _availableThemeModes = [
    ThemeData(),
    ThemeData()
  ];

  ThemeData get currentTheme => _currentTheme;
  List<ThemeData> get availableThemeModes => _availableThemeModes;

  void changeTheme(ThemeData themeData)
  {
    _currentTheme = themeData;
    notifyListeners();
  }
}