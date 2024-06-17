import 'package:flutter/material.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/common/widgets/app_text.dart';
import 'package:tki_app/core/extensions/l10n_extension.dart';
import 'package:tki_app/core/extensions/num_extension.dart';

class QuestionListTile extends StatelessWidget {
  const QuestionListTile({
    super.key,
    required this.number,
    required this.firstQuestion,
    required this.secondQuestion,
    required this.firstType,
    required this.secondType,
    this.showType = false,
  });

  final String firstQuestion;
  final String secondQuestion;
  final String firstType;
  final String secondType;
  final bool showType;
  final int number;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSize.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: AppSize.l, bottom: AppSize.s),
            child: TextSingleLineSized(
              "${context.l10n.question} $number",
              style: const TextStyle(
                  fontSize: AppSize.l, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.m, vertical: AppSize.m12),
            decoration: BoxDecoration(
              color: AppColors.grey700.withOpacity(AppSize.xxl.fraction),
              borderRadius: BorderRadius.circular(AppSize.m),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                          fontSize: AppSize.m18,
                        ),
                    children: [
                      TextSpan(
                        text: "${showType? firstType.toUpperCase(): "X"}: ",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: firstQuestion,
                        
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: AppSize.s2),
                  child: Divider(
                    thickness: AppSize.s2,
                    indent: AppSize.zero,
                    endIndent: AppSize.zero,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                          fontSize: AppSize.m18,
                        ),
                    children: [
                      TextSpan(
                        text: "${showType? secondType.toUpperCase(): "Y"}: ",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: secondQuestion,
                        
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSize.s),
        ],
      ),
    );
  }
}
