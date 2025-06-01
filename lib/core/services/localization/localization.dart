// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Localization extends AppLocales {
  static const List<Locale> supportedLocales = <Locale>[
    AppLocales.ENGLISH,
    AppLocales.ARABIC,
  ];

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];
}

class AppLocales {
  static const Locale FALLBACKLOCALE = Locale("en", "EN");
  static const Locale ENGLISH = Locale("en", "EN");
  static const Locale ARABIC = Locale("ar", "UAE");
}
