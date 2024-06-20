import 'package:flutter/material.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/common/widgets/shimmer_widget.dart';
import 'package:tki_app/core/extensions/context_extension.dart';
import 'package:tki_app/core/extensions/num_extension.dart';

class AssessmentHistoryTileShimmer extends StatelessWidget {
  const AssessmentHistoryTileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.s),
      child: Container(
        width: double.infinity,
        height: AppSize.xxxl96 * 1.5,
        decoration: BoxDecoration(
          color: AppColors.grey700.withOpacity(AppSize.xxxl.fraction),
          borderRadius: BorderRadius.circular(AppSize.m),
        ),
        padding: const EdgeInsets.symmetric(
            vertical: AppSize.s, horizontal: AppSize.m),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            const ShimmerWidget.rectangular(
              width: double.infinity,
              height: AppSize.xl,
            ),
            const SizedBox(
              height: AppSize.s4,
            ),
            Padding(
              padding:
                  EdgeInsets.only(right: context.width * AppSize.l.fraction),
              child: const ShimmerWidget.rectangular(
                width: double.infinity,
                height: AppSize.l,
              ),
            ),
            const SizedBox(
              height: AppSize.s4,
            ),
            Padding(
              padding:
                  EdgeInsets.only(right: context.width * AppSize.xl.fraction),
              child: const ShimmerWidget.rectangular(
                width: double.infinity,
                height: AppSize.m,
              ),
            ),
            const SizedBox(
              height: AppSize.s4,
            ),
            Padding(
              padding:
                  EdgeInsets.only(right: context.width * AppSize.xxl.fraction),
              child: const ShimmerWidget.rectangular(
                width: double.infinity,
                height: AppSize.m,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
