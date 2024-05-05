import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/common/widgets/app_text.dart';
import 'package:tki_app/core/extensions/l10n_extension.dart';

class InterpretationChart extends StatelessWidget {
  const InterpretationChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.s),
      child: LayoutBuilder(builder: (context, constraints) {
          final side = constraints.maxWidth < constraints.maxHeight
            ? constraints.maxWidth
            : constraints.maxHeight;
          const borderWidth = AppSize.s;
          const gap = AppSize.xxs;
          final boxWidth = (side - (borderWidth * 4)) / 2;
          final boxHeight = (side - (borderWidth * 6 + gap * 2)) / 3;
        return SizedBox(
          width: side,
          height: side,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: _container(
                  text: context.l10n.competing,
                  description: context.l10n.competingDescription,
                  width: boxWidth,
                  height: boxHeight,
                  color: AppColors.yellow,
                  borderWidth: borderWidth,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: _container(
                  text: context.l10n.collaborating,
                  description: context.l10n.collaboratingDescription,
                  width: boxWidth,
                  height: boxHeight,
                  color: AppColors.orange,
                  borderWidth: borderWidth,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: _container(
                  text: context.l10n.compromising,
                  description: context.l10n.compromisingDescription,
                  width: boxWidth,
                  height: boxHeight,
                  color: AppColors.red,
                  borderWidth: borderWidth,
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: _container(
                  text: context.l10n.avoiding,
                  description: context.l10n.avoidingDescription,
                  width: boxWidth,
                  height: boxHeight,
                  color: AppColors.purple,
                  borderWidth: borderWidth,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: _container(
                  text: context.l10n.accommodating,
                  description: context.l10n.accommodatingDescription,
                  width: boxWidth,
                  height: boxHeight,
                  color: AppColors.blue,
                  borderWidth: borderWidth,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _container({
    required String text,
    required String description,
    required double width,
    required double height,
    required Color color,
    required double borderWidth,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.gray[300]?.withOpacity(0.64),
        border: Border.all(
          color: color,
          width: borderWidth,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSize.s),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextSingleLineSized(
              text,
              style: TextStyle(
                  color: color, fontSize: AppSize.l, fontWeight: FontWeight.bold),
            ),
            AutoSizeText(
              description,
              style: const TextStyle(fontSize: AppSize.m, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
