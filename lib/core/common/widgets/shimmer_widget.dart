import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/extensions/num_extension.dart';

class ShimmerWidget extends StatelessWidget {

  const ShimmerWidget.rectangular(
      {super.key, required this.width, required this.height});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
    baseColor: AppColors.grey200.withOpacity(AppSize.xxxl.fraction),
    highlightColor: AppColors.grey200,
    child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: AppColors.grey200.withOpacity(AppSize.xxxl.fraction),
            borderRadius: BorderRadius.circular(AppSize.s),
          ),
        ),
  ); 
}
