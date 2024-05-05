import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/common/widgets/app_scaffold.dart';
import 'package:tki_app/core/extensions/l10n_extension.dart';
import 'package:tki_app/src/interpretation_report/presentation/widgets/interpretation_chart.dart';
import 'package:tki_app/src/interpretation_report/presentation/widgets/interpretation_slider.dart';
import 'package:tki_app/src/interpretation_report/presentation/widgets/interpretation_text.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: AppSize.l),
        child: Align(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: AppSize.l),
                Text(context.l10n.interpretationReportTitle, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: AppSize.l),),
                const SizedBox(height: AppSize.s),
                Text(context.l10n.interpretationReportDescription, style: const TextStyle(fontSize: AppSize.m), textAlign: TextAlign.justify,),
                const SizedBox(height: AppSize.m),
                const InterpretationChart(),
                const SizedBox(height: AppSize.l),
                InterpretationSlider(
                  name: context.l10n.assertiveness,
                  description: context.l10n.assertivenessDescription,
                  right: context.l10n.assertive,
                  left: context.l10n.unassertive,
                  centerColor: AppColors.red,
                  rightColor: AppColors.yellow,
                  leftColor: AppColors.purple,
                ),
                const SizedBox(height: AppSize.xl),
                InterpretationSlider(
                  name: context.l10n.cooperativeness,
                  description: context.l10n.cooperativenessDescription,
                  right: context.l10n.cooperative,
                  left: context.l10n.uncooperative,
                  centerColor: null,
                  rightColor: AppColors.blue,
                  leftColor: AppColors.purple,
                ),
                const SizedBox(height: AppSize.xl),
                InterpretationText(
                  title: context.l10n.competing,
                  description: context.l10n.competingDefinition,
                  color: AppColors.yellow,
                ),
                const SizedBox(height: AppSize.m),
                InterpretationText(
                  title: context.l10n.collaborating,
                  description: context.l10n.collaboratingDefinition,
                  color: AppColors.orange,
                ),
                const SizedBox(height: AppSize.m),
                InterpretationText(
                  title: context.l10n.compromising,
                  description: context.l10n.compromisingDefinition,
                  color: AppColors.red,
                ),
                const SizedBox(height: AppSize.m),
                InterpretationText(
                  title: context.l10n.avoiding,
                  description: context.l10n.avoidingDefinition,
                  color: AppColors.purple,
                ),
                const SizedBox(height: AppSize.m),
                InterpretationText(
                  title: context.l10n.accommodating,
                  description: context.l10n.accommodatingDefinition,
                  color: AppColors.blue,
                ),
                const SizedBox(height: AppSize.xl),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
