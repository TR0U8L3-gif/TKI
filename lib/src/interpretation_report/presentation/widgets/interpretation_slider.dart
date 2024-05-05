import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/common/widgets/app_text.dart';

class InterpretationSlider extends StatelessWidget {
  const InterpretationSlider({
    super.key,
    required this.name,
    required this.description,
    required this.right,
    required this.left,
    required this.centerColor,
    required this.rightColor,
    required this.leftColor,
  });

  final String name;
  final String description;
  final String right;
  final String left;
  final Color? centerColor;
  final Color rightColor;
  final Color leftColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppSize.s),
        SizedBox(
          height: AppSize.xxl,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: TextSingleLineSized(
                  name,
                  style: const TextStyle(
                    fontSize: AppSize.l,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSize.s),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(left),
                      Text(right),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSize.s),
        Container(
          height: AppSize.l,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                leftColor,
                if (centerColor != null) centerColor!,
                rightColor,
              ],
            ),
          ),
        ),
        const SizedBox(height: AppSize.m),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: const TextStyle(fontSize: AppSize.mm),
            children: [
              TextSpan(
                text: '$name ',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: description,
              ),
            ]
          ),
        ),
      ],
    );
  }
}
