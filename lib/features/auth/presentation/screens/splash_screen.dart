import 'package:crafty_bay/app/extensions/localization_extension.dart';
import 'package:crafty_bay/app/providers/language_provider.dart';
import 'package:crafty_bay/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final languageProvider = context.read<LanguageProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localization.hello),
      ),
      body: Column(
        children: [
          // FilledButton(
          //   onPressed: (){
          //     Locale locale = context.read<LanguageProvider>().currentLocale;
          //     if(locale == Locale("en")){
          //       context.read<LanguageProvider>().changeLocale(Locale("bn"));
          //     }
          //     else{
          //       context.read<LanguageProvider>().changeLocale(Locale("en"));
          //     }
          //   },
          //   child: Text("Change Language")
          // )
          Text(context.localization.changeYourLanguage),
          DropdownMenu<Locale>(
            dropdownMenuEntries: languageProvider.supportedLocales.map((locale){
              return DropdownMenuEntry(value: locale, label: locale.languageCode);
            }).toList(),
            initialSelection: languageProvider.currentLocale,
            onSelected: (value){
              languageProvider.changeLocale(value!);
            },
          )
        ],
      ),
    );
  }
}
