import 'dart:ui';
import 'package:collection/collection.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:tki_app/config/l10n/l10n.dart';

@singleton
class LanguageProvider extends ChangeNotifier {
  Locale _currentLanguage = L10n.allLanguages.first;

  Locale get currentLanguage => _currentLanguage;

  Locale? isSupported(String languageCode) {
    return L10n.allLanguages
        .firstWhereOrNull((locale) => locale.languageCode == languageCode);
  }

  void changeLanguage(String newLanguageCode) {
    Locale? newLanguage = isSupported(newLanguageCode);
    if (newLanguage != null) {
      _currentLanguage = newLanguage;
      notifyListeners();
    } else {
      Fimber.w('Language $newLanguageCode is not supported');
    }
  }
}
