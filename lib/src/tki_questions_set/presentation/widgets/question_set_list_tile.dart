import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/common/widgets/app_text.dart';
import 'package:tki_app/core/extensions/l10n_extension.dart';
import 'package:tki_app/core/extensions/string_extension.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';

class QuestionSetListTile extends StatelessWidget {
  const QuestionSetListTile({super.key, required this.questionSet});
  final QuestionSet questionSet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.s),
      child: GestureDetector(
        onTap: () {},
        child: Container(
            width: double.infinity,
            height: AppSize.xxxl96,
            decoration: BoxDecoration(
              color: AppColors.gray[300],
              borderRadius: BorderRadius.circular(AppSize.m),
              boxShadow: [
                BoxShadow(
                  color: AppColors.gray[300]!.withOpacity(0.5),
                  spreadRadius: AppSize.s2,
                  blurRadius: AppSize.s4,
                  offset: const Offset(0, AppSize.s2),
                ),
              ],
            ),
            padding: const EdgeInsets.all(AppSize.s),
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 1.25,
                  child: Container(
                      height: AppSize.xxxl72,
                      decoration: BoxDecoration(
                        color: AppColors.gray[400]!
                            .withOpacity(AppSize.fraction(AppSize.xxxl)),
                        borderRadius: BorderRadius.circular(AppSize.m),
                      ),
                      child: questionSet.imageUrl?.isUrl ?? false
                          ? Image.network(
                              questionSet.imageUrl!,
                              fit: BoxFit.cover,
                            )
                          : Icon(
                              Icons.auto_stories_outlined,
                              color: AppColors.gray[500],
                              size: AppSize.xxl56,
                            )),
                ),
                const SizedBox(
                  width: AppSize.sm,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        flex: 2,
                        child: AutoSizeText(
                          questionSet.title,
                          style: const TextStyle(
                            fontSize: AppSize.m18,
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 2,
                          softWrap: true,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: TextSingleLineSized(
                          'context.l10n.numberOfQuestions: ${questionSet.questions.length}',
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: TextSingleLineSized(
                          "context.l10n.languageCode: ${questionSet.language}",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
