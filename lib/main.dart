import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/l10n/l10n.dart';
import 'package:tki_app/config/locator/injection.dart';
import 'package:tki_app/config/routes/app_router.dart';
import 'package:tki_app/core/common/providers/language_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await locator.allReady();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => locator<LanguageProvider>(),
      child: Consumer<LanguageProvider>(builder: (context, l10n, child) {
        return MaterialApp.router(
          title: 'Thomas-Kilmann Conflict Mode Instrument',
          localizationsDelegates: L10n.allDelegates,
          supportedLocales: L10n.allLanguages,
          locale: l10n.currentLanguage,
          theme: AppColors.theme,
          routerConfig: locator<AppRouter>().config(),
        );
      }),
    );
  }
}
