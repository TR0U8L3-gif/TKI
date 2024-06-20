import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/common/widgets/app_text.dart';
import 'package:tki_app/core/extensions/date_extension.dart';
import 'package:tki_app/core/extensions/l10n_extension.dart';
import 'package:tki_app/core/extensions/num_extension.dart';
import 'package:tki_app/core/extensions/string_extension.dart';
import 'package:tki_app/src/assessment_history/data/models/assessment_history.dart';

class AssessmentHistoryTile extends StatelessWidget {
  const AssessmentHistoryTile({
    super.key,
    required this.assessmentHistory,
    required this.index,
  });

  final AssessmentHistory assessmentHistory;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.s),
      child: GestureDetector(
        // TODO(navigate): Navigate to the assessment history details page
        // onTap: () => context.router.push(),
        child: Container(
          width: double.infinity,
          height: AppSize.xxxl96 * 1.5,
          decoration: BoxDecoration(
            color: AppColors.grey700.withOpacity(AppSize.xxl.fraction),
            borderRadius: BorderRadius.circular(AppSize.m),
          ),
          padding: const EdgeInsets.symmetric(
              vertical: AppSize.s, horizontal: AppSize.m),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                flex: 3,
                child: AutoSizeText(
                  "${assessmentHistory.name.capitalize}${assessmentHistory.title.isNotEmpty ? ': ${assessmentHistory.title.capitalize}' : ''}",
                  style: const TextStyle(
                    fontSize: AppSize.l22,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  softWrap: true,
                ),
              ),
              Flexible(
                flex: 2,
                child: AutoSizeText(
                  "${context.l10n.date}: ${assessmentHistory.date.ddMMyyyy}",
                  style: const TextStyle(
                    fontSize: AppSize.m,
                  ),
                  maxLines: 2,
                  softWrap: true,
                ),
              ),
              Flexible(
                flex: 2,
                child: AutoSizeText(
                  assessmentHistory.questionSet.title,
                  style: const TextStyle(
                    fontSize: AppSize.m18,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  softWrap: true,
                ),
              ),
              Flexible(
                flex: 2,
                child: TextSingleLineSized(
                  '${context.l10n.numberOfQuestions}: ${assessmentHistory.questionSet.questions.length}, ${context.l10n.languageCode}: ${assessmentHistory.questionSet.language}',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
