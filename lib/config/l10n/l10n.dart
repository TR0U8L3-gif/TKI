import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tki_app/core/extensions/l10n_extension.dart';

class L10n {
  static const allLanguages = [
    Locale('en'),
    Locale('pl'),
    Locale('es'),
  ];

  static const allDelegates = [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  static Locale? isSupported(String languageCode) {
    return allLanguages
        .firstWhereOrNull((locale) => locale.languageCode == languageCode);
  }
}
