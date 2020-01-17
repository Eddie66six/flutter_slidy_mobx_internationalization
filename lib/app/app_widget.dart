import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_slidy_mobx/app/localization.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
      supportedLocales: [  
        const Locale('tr', 'TR'),  
        const Locale('en', 'US')  
      ],
      localizationsDelegates: [  
        const CustomLocalizationsDelegate(),  
        GlobalMaterialLocalizations.delegate,  
        GlobalWidgetsLocalizations.delegate
      ],  
      localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {  
        for (Locale supportedLocale in supportedLocales) {  
          if (supportedLocale.languageCode == locale.languageCode || supportedLocale.countryCode == locale.countryCode) {  
            return supportedLocale;  
          }   
        }
        return supportedLocales.first;  
      },
    );
  }
}