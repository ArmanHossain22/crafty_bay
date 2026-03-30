import 'dart:ui';

import 'package:flutter/foundation.dart';

class LanguageProvider extends ChangeNotifier
{
  Locale _currentLocale = Locale('en');

  final List<Locale> _supportedLocales = [
    Locale('en'), /// English
    Locale('bn') /// Bengali
  ];

  List<Locale> get supportedLocales => _supportedLocales;
  Locale get currentLocale => _currentLocale;

  void changeLocale(Locale locale)
  {
    _currentLocale = locale;
    notifyListeners();
  }
}