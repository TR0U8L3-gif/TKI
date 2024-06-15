import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/l10n/l10n.dart';
import 'package:tki_app/config/locator/injection.dart';
import 'package:tki_app/config/routes/app_router.dart';
import 'package:tki_app/src/language/presentation/bloc/language_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  configureDependencies();
  await locator.allReady();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<LanguageBloc>(),
      child: BlocBuilder<LanguageBloc, LanguageState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Thomas-Kilmann Conflict Mode Instrument',
            localizationsDelegates: L10n.allDelegates,
            supportedLocales: L10n.allLanguages,
            locale: state.currentLanguage,
            theme: AppColors.theme,
            routerConfig: locator<AppRouter>().config(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
