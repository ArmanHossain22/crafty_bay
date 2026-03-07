import 'package:crafty_bay/features/auth/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings){
    Widget widget = SizedBox();
    switch(settings.name)
    {
      case "/" :
        widget = const SplashScreen();
        break;
      case "/sign-up" :
        widget = const SplashScreen();
    }
    return MaterialPageRoute(builder: (context) => widget);
  }
}