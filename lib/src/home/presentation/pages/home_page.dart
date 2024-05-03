import 'package:flutter/material.dart';
import 'package:tki_app/config/assets/app_assets.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/common/widgets/app_button.dart';
import 'package:tki_app/core/common/widgets/app_scaffold.dart';
import 'package:tki_app/core/extensions/context_extension.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const double _height = 56.0;
  static const double _widthFactor = 0.8;
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: AppColors.gray[400],
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
                      text: "TKI Assessment",
                      height: _height,
                      width: context.width * _widthFactor,
                      color: AppColors.yellow,
                      shadowColor: AppColors.yellowDark,
                      colorOnPressed: AppColors.yellowLight,
                      shadowColorOnPressed: AppColors.yellowDark,
                    ),
                    AppButton(
                      text: "Interpretation Report",
                      height: _height,
                      width: context.width * _widthFactor,
                      color: AppColors.orange,
                      shadowColor: AppColors.orangeDark,
                      colorOnPressed: AppColors.orangeLight,
                      shadowColorOnPressed: AppColors.orangeDark,
                    ),
                    AppButton(
                      text: "Assessment History",
                      height: _height,
                      width: context.width * _widthFactor,
                      color: AppColors.red,
                      shadowColor: AppColors.redDark,
                      colorOnPressed: AppColors.redLight,
                      shadowColorOnPressed: AppColors.redDark,
                    ),
                    AppButton(
                      text: "TKI Questions Sets",
                      height: _height,
                      width: context.width * _widthFactor,
                      color: AppColors.purple,
                      shadowColor: AppColors.purpleDark,
                      colorOnPressed: AppColors.purpleLight,
                      shadowColorOnPressed: AppColors.purpleDark,
                    ),
                    AppButton(
                      text: "Language",
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
