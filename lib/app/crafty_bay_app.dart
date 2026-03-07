import 'package:crafty_bay/app/app_routes.dart';
import 'package:crafty_bay/app/app_themes.dart';
import 'package:flutter/material.dart';

class CraftyBayApp extends StatelessWidget {
  const CraftyBayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      initialRoute: "/",
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}