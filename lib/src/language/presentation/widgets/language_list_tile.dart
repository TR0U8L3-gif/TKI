import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/common/widgets/app_text.dart';
import 'package:tki_app/core/extensions/context_extension.dart';
import 'package:tki_app/core/extensions/l10n_extension.dart';
import 'package:tki_app/core/extensions/num_extension.dart';
import 'package:tki_app/core/utils/constants.dart';
import 'package:tki_app/src/language/presentation/bloc/language_bloc.dart';

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
                  color: (_isSelected(context)
                          ? AppColors.grey400
                          : AppColors.grey700)
                      .withOpacity(AppSize.xxxl.fraction)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 8 / 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(AppSize.m),
                      child: Image.asset(
                        'assets/icons/${languageCode.toLowerCase()}_flag.png',
                        height: height ?? kListTileHeight,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: AppSize.s,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextSingleLineSized(
                          language,
                          style: TextStyle(
                            fontSize: AppSize.l,
                            fontWeight: FontWeight.bold,
                            height: kTextLineHeight,
                          ),
                        ),
                        TextSingleLineSized(
                          context.width < AppSize.deviceExtraSmall
                              ? languageCode
                              : "${context.l10n.languageCode}: $languageCode",
                          style: TextStyle(
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
      context.watch<LanguageBloc>().state.currentLanguage.languageCode ==
      languageCode;
}
