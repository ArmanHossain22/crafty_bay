import 'package:crafty_bay/app/app_routes.dart';
import 'package:crafty_bay/app/app_themes.dart';
import 'package:crafty_bay/app/providers/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';

// TODO: Add Theme Mode Change Provider

class CraftyBayApp extends StatelessWidget {
  const CraftyBayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LanguageProvider())
      ],
      child: Consumer<LanguageProvider>(
        builder: (context, languageProvider, child){
          return MaterialApp(
              title: 'Flutter Demo',
              theme: AppThemes.lightTheme,
              darkTheme: AppThemes.darkTheme,
              initialRoute: "/",
              onGenerateRoute: AppRoutes.onGenerateRoute,
              localizationsDelegates: [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: languageProvider.supportedLocales,
              locale: languageProvider.currentLocale
          );
        }
      ),
    );
  }
}