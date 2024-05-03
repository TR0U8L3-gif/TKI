import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class L10n {
  
  static final allLanguages = [
    const Locale('en'),
    const Locale('pl'),
  ];

  static final allDelegates = [
    DefaultMaterialLocalizations.delegate,
    DefaultCupertinoLocalizations.delegate,
    DefaultWidgetsLocalizations.delegate,
  ];
}
