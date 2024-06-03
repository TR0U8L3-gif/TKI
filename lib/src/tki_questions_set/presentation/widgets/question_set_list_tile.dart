import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/config/routes/app_router.gr.dart';
import 'package:tki_app/core/common/widgets/app_text.dart';
import 'package:tki_app/core/extensions/l10n_extension.dart';
import 'package:tki_app/core/extensions/num_extension.dart';
import 'package:tki_app/core/extensions/string_extension.dart';
import 'package:tki_app/core/services/messages/messenger.dart';
import 'package:tki_app/core/utils/error/errors.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';

class QuestionSetListTile extends StatelessWidget {
  const QuestionSetListTile({super.key, required this.questionSet});
  final QuestionSet questionSet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.s),
      child: GestureDetector(
        onTap: () =>
            context.router.push(QuestionSetRoute(questionSet: questionSet)),
        child: Container(
            width: double.infinity,
            height: AppSize.xxxl96,
            decoration: BoxDecoration(
              color: AppColors.grey700.withOpacity(AppSize.xxl.fraction),
              borderRadius: BorderRadius.circular(AppSize.m),
            ),
            padding: const EdgeInsets.all(AppSize.s),
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 1.25,
                  child: Container(
                      height: AppSize.xxxl72,
                      decoration: BoxDecoration(
                        color:
                            AppColors.grey100.withOpacity(AppSize.xl.fraction),
                        borderRadius: BorderRadius.circular(AppSize.m),
                      ),
                      child: questionSet.imageUrl?.isUrl ?? false
                          ? Opacity(
                              opacity: AppSize.xxxl80.fraction,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(AppSize.m),
                                child: CachedNetworkImage(
                                  imageUrl: questionSet.imageUrl!,
                                  fit: BoxFit.cover,
                                  errorListener: (error) => MessengerManager()
                                      .showErrorToast(
                                          context,
                                          questionSetImageLoadErrorMessage(
                                              questionSet, error),
                                          toastLength:
                                              MessengerToastLength.short),
                                  errorWidget: (_, __, ___) => const Icon(
                                      Icons.broken_image_outlined,
                                      color: AppColors.grey800,
                                      size: AppSize.xxl56),
                                ),
                              ),
                            )
                          : const Icon(
                              Icons.auto_stories_outlined,
                              color: AppColors.grey800,
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
                          '${context.l10n.numberOfQuestions}: ${questionSet.questions.length}',
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: TextSingleLineSized(
                          "${context.l10n.languageCode}: ${questionSet.language}",
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
