import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
export 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';
export 'package:flutter_gen/gen_l10n/app_localizations_en.dart';

extension L10nExtension on BuildContext {
  Locale get locale => Localizations.localeOf(this);
  String get languageTag => locale.languageCode;
  AppLocalizations get l10n => AppLocalizations.of(this) ?? AppLocalizationsEn();
} 