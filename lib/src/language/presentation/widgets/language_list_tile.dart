import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/common/providers/language_provider.dart';
import 'package:tki_app/core/common/widgets/app_text.dart';
import 'package:tki_app/core/constants/constants.dart';

class LanguageListTile extends StatelessWidget {
  const LanguageListTile({
    super.key,
    required this.language,
    required this.languageCode,
    this.width,
    this.height,
    this.padding = const EdgeInsets.all(AppSize.s),
    required this.onTap,
  });

  final String language;
  final String languageCode;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry padding;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
              width: width ?? double.infinity,
              height: height ?? kListTileHeight,
              padding: padding,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.m),
                  color: _isSelected(context)
                      ? AppColors.gray[600]
                      : AppColors.gray[500]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(AppSize.m),
                      child: Image.asset(
                        'assets/icons/${languageCode.toLowerCase()}_flag.png',
                        height: height ?? kListTileHeight,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: AppSize.s,
                  ),
                  Flexible(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextSingleLine(
                          language,
                          style: const TextStyle(
                            fontSize: AppSize.l,
                            fontWeight: FontWeight.bold,
                            height: kTextLineHeight,
                          ),
                        ),
                        TextSingleLine(
                          languageCode,
                          style: const TextStyle(
                            fontSize: AppSize.ml,
                            height: kTextLineHeight,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: AppSize.ml,
          )
        ],
      ),
    );
  }

  bool _isSelected(BuildContext context) =>
      context.watch<LanguageProvider>().currentLanguage.languageCode ==
      languageCode;
}