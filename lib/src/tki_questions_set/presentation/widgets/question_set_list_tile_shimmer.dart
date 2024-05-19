import 'package:flutter/material.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/common/widgets/shimmer_widget.dart';
import 'package:tki_app/core/extensions/num_extension.dart';

class QuestionSetListTileShimmer extends StatelessWidget {
  const QuestionSetListTileShimmer({
    super.key,
  });

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
              color: AppColors.grey700.withOpacity(AppSize.xxxl.fraction),
              borderRadius: BorderRadius.circular(AppSize.m),
            ),
            padding: const EdgeInsets.all(AppSize.s),
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 1.25,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppSize.m),
                    child: const ShimmerWidget.rectangular(
                      width: double.infinity,
                      height: AppSize.xxxl72,
                    ),
                  ),
                ),
                const SizedBox(
                  width: AppSize.sm,
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ShimmerWidget.rectangular(
                        width: double.infinity,
                        height: AppSize.l,
                      ),
                      SizedBox(
                        height: AppSize.s4,
                      ),
                      ShimmerWidget.rectangular(
                        width: double.infinity,
                        height: AppSize.m,
                      ),
                      SizedBox(
                        height: AppSize.s4,
                      ),
                      ShimmerWidget.rectangular(
                        width: double.infinity,
                        height: AppSize.m,
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
