import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/common/widgets/app_scaffold.dart';
import 'package:tki_app/core/extensions/l10n_extension.dart';
import 'package:tki_app/src/interpretation_report/presentation/widgets/interpretation_chart.dart';
import 'package:tki_app/src/interpretation_report/presentation/widgets/interpretation_slider.dart';

@RoutePage()
class InterpretationReportPage extends StatelessWidget {
  const InterpretationReportPage({super.key});

  static const String routeName = '/interpretation-report';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: Text(context.l10n.interpretationReport),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.l),
        child: Align(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const InterpretationChart(),
                InterpretationSlider(
                  name: context.l10n.assertiveness,
                  description: context.l10n.assertivenessDescription,
                  right: context.l10n.assertive,
                  left: context.l10n.unassertive,
                  centerColor: AppColors.red,
                  rightColor: AppColors.yellow,
                  leftColor: AppColors.purple,
                ),
                InterpretationSlider(
                  name: context.l10n.cooperativeness,
                  description: context.l10n.cooperativenessDescription,
                  right: context.l10n.cooperative,
                  left: context.l10n.uncooperative,
                  centerColor: null,
                  rightColor: AppColors.blue,
                  leftColor: AppColors.purple,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
