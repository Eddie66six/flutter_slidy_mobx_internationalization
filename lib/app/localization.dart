import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomLocalizations {  
  CustomLocalizations(this.locale);  
  
  final Locale locale;  
  
  static CustomLocalizations of(BuildContext context) {  
    return Localizations.of<CustomLocalizations>(context, CustomLocalizations);  
  }  
  
  Map<String, String> _sentences;  
  
  Future<bool> load(Locale newLocale) async {
    print("Load ${newLocale?.languageCode ?? this.locale.languageCode}");
    String data =
      await rootBundle.loadString('lib/resources/lang/${newLocale?.languageCode ?? this.locale.languageCode}.json');
    Map<String, dynamic> _result = json.decode(data);

    this._sentences = new Map();
    _result.forEach((String key, dynamic value) {
      this._sentences[key] = value.toString();
    });

    return true;
  }
  
  String trans(String key) {  
    return this._sentences[key];  
  }  
}

class CustomLocalizationsDelegate extends LocalizationsDelegate<CustomLocalizations> {  
  const CustomLocalizationsDelegate();  
  
  @override  
  bool isSupported(Locale locale) => ['tr', 'en'].contains(locale.languageCode);  
  
  @override  
  Future<CustomLocalizations> load(Locale locale) async {  
    CustomLocalizations localizations = new CustomLocalizations(locale);  
  await localizations.load(null);  
  
  print("Load ${locale.languageCode}");  
  
  return localizations;  
  }  
  
  @override  
  bool shouldReload(CustomLocalizationsDelegate old) => true;  
}