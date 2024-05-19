import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/common/widgets/app_text.dart';
import 'package:tki_app/core/extensions/context_extension.dart';
import 'package:tki_app/core/extensions/num_extension.dart';

class InterpretationText extends StatelessWidget {
  const InterpretationText({
    super.key,
    required this.title,
    required this.description,
    required this.color,
  });

  final String title;
  final String description;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: context.width * AppSize.xxxl.fraction,
          padding: const EdgeInsets.symmetric(horizontal: AppSize.m, vertical: AppSize.s),
          decoration: BoxDecoration(
            color: color,
          ),
          child: TextSingleLineSized(
            title,
            style: TextStyle(
              fontSize: AppSize.l,
              fontWeight: FontWeight.bold,
              height: AppSize.xxxl88.fraction,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: AppSize.s,
            left: AppSize.l,
          ),
          child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                style: const TextStyle(fontSize: AppSize.m),
                children: [
                  TextSpan(
                    text: '$title ',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: description,
                  ),
                ]
              ),
            ),
        ),
      ],
    );
  }
}
