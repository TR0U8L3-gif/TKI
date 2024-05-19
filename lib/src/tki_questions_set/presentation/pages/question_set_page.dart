import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/common/widgets/app_scaffold.dart';
import 'package:tki_app/core/common/widgets/app_text.dart';
import 'package:tki_app/core/extensions/l10n_extension.dart';
import 'package:tki_app/core/extensions/num_extension.dart';
import 'package:tki_app/core/extensions/string_extension.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';
import 'package:tki_app/src/tki_questions_set/presentation/widgets/question_list_tile.dart';

@RoutePage()
class QuestionSetPage extends HookWidget {
  const QuestionSetPage({super.key, required this.questionSet});

  static const String routeName = '/set';

  final QuestionSet questionSet;

  @override
  Widget build(BuildContext context) {
    final showType = useState(false);
    return AppScaffold(
      appBar: AppBar(
        title: Text(context.l10n.questionSet),
        actions: [
          IconButton(
            onPressed: () => showType.value = !showType.value,
            icon: SizedBox(
              width: AppSize.xl40,
              height: AppSize.xl40,
              child: Align(
                child: Icon(showType.value
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined, size: AppSize.l22,),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSize.s2),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(height: AppSize.xl),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.l),
                child: Container(
                  padding: const EdgeInsets.all(AppSize.s),
                  decoration: BoxDecoration(
                    color: AppColors.grey700.withOpacity(AppSize.xxl.fraction),
                    borderRadius: BorderRadius.circular(AppSize.m),
                  ),
                  child: Row(
                    children: [
                      Container(
                          height: AppSize.xxxl96,
                          width: AppSize.xxxl96 * 1.25,
                          decoration: BoxDecoration(
                            color: AppColors.grey100
                                .withOpacity(AppSize.xxl.fraction),
                            borderRadius: BorderRadius.circular(AppSize.m),
                          ),
                          child: questionSet.imageUrl?.isUrl ?? false
                              ? Opacity(
                              opacity: AppSize.xxxl80.fraction,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(AppSize.m),
                                child: Image.network(
                                  questionSet.imageUrl!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                          ) : const Icon(
                                  Icons.auto_stories_outlined,
                                  color: AppColors.grey800,
                                  size: AppSize.xxl56,
                                )),
                      const SizedBox(
                        width: AppSize.s,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              flex: 2,
                              child: AutoSizeText(
                                questionSet.title,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: AppSize.l,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 2,
                                softWrap: true,
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: TextSingleLineSized(
                                '${context.l10n.numberOfQuestions}: ${questionSet.questions.length}',
                                style: const TextStyle(
                                  fontSize: AppSize.m18,
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: TextSingleLineSized(
                                "${context.l10n.languageCode}: ${questionSet.language}",
                                style: const TextStyle(
                                  fontSize: AppSize.m18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: AppSize.xl),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final question = questionSet.questions[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSize.l,
                    ),
                    child: QuestionListTile(
                      number: index + 1,
                      firstQuestion: question.firstQuestion,
                      firstType: question.firstType,
                      secondQuestion: question.secondQuestion,
                      secondType: question.secondType,
                      showType: showType.value,
                    ),
                  );
                },
                childCount: questionSet.questions.length,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: AppSize.xl),
            ),
          ],
        ),
      ),
    );
  }
}
