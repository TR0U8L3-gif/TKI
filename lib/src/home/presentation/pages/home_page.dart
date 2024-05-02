import 'package:flutter/material.dart';
import 'package:tki_app/config/assets/app_assets.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/common/widgets/app_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              Image.asset(Assets.iconsTkiName),
              
            ],
          ),
        ),
      ),
      );
  }
}
