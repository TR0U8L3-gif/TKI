import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tki_app/config/assets/app_assets.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/common/widgets/app_button.dart';
import 'package:tki_app/core/common/widgets/app_scaffold.dart';
import 'package:tki_app/core/extensions/context_extension.dart';
import 'package:tki_app/core/extensions/l10n_extension.dart';
import 'package:tki_app/src/language/presentation/pages/languages_page.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = '/';
  static const double _height = 56.0;
  static const double _widthFactor = 0.8;
  
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppSize.s),
        child: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                flex: 3,
                child: Align(child: Image.asset(Assets.iconsTkiName)),
              ),
              Flexible(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    AppButton(
                      text: AppLocalizations.of(context)!.tkiAssessment,
                      height: _height,
                      width: context.width * _widthFactor,
                      color: AppColors.yellow,
                      shadowColor: AppColors.yellowDark,
                      colorOnPressed: AppColors.yellowLight,
                      shadowColorOnPressed: AppColors.yellowDark,
                    ),
                    AppButton(
                      text: context.l10n.interpretationReport,
                      height: _height,
                      width: context.width * _widthFactor,
                      color: AppColors.orange,
                      shadowColor: AppColors.orangeDark,
                      colorOnPressed: AppColors.orangeLight,
                      shadowColorOnPressed: AppColors.orangeDark,
                    ),
                    AppButton(
                      onPressed: () => context.changeLanguage('es'),
                      text: context.l10n.assessmentHistory,
                      height: _height,
                      width: context.width * _widthFactor,
                      color: AppColors.red,
                      shadowColor: AppColors.redDark,
                      colorOnPressed: AppColors.redLight,
                      shadowColorOnPressed: AppColors.redDark,
                    ),
                    AppButton(
                      onPressed: () => context.changeLanguage('en'),
                      text: context.l10n.tkiQuestionsSet,
                      height: _height,
                      width: context.width * _widthFactor,
                      color: AppColors.purple,
                      shadowColor: AppColors.purpleDark,
                      colorOnPressed: AppColors.purpleLight,
                      shadowColorOnPressed: AppColors.purpleDark,
                    ),
                    AppButton(
                      onPressed: () => context.router.pushNamed(LanguagesPage.routeName),
                      text: context.l10n.language,
                      height: _height,
                      width: context.width * _widthFactor,
                      color: AppColors.blue,
                      shadowColor: AppColors.blueDark,
                      colorOnPressed: AppColors.blueLight,
                      shadowColorOnPressed: AppColors.blueDark,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSize.xl),
            ],
          ),
        ),
      ),
    );
  }
}
