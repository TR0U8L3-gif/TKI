import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/common/widgets/hover.dart';
import 'package:tki_app/core/extensions/context_extension.dart';

const double _defaultHeight = AppSize.xxl;
const double _opacity = 0.36;

class AppButton extends HookWidget {
  const AppButton({
    super.key,
    this.onPressed,
    required this.text,
    this.width,
    this.height,
    this.padding,
    this.color,
    this.colorOnPressed,
    this.shadowColor,
    this.shadowColorOnPressed,
    this.textColor,
    this.textColorOnPressed,
  });

  final VoidCallback? onPressed;
  final String text;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Color? colorOnPressed;
  final Color? shadowColor;
  final Color? shadowColorOnPressed;
  final Color? textColor;
  final Color? textColorOnPressed;

  @override
  Widget build(BuildContext context) {
    final isHover = useState(false);
    return Hover(
      onTap: onPressed,
      hoverStatus: isHover.value,
      onEnter: () {
        isHover.value = true;
      },
      onExit: () {
        isHover.value = false;
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          _container(
            context: context,
            width: width,
            height: height,
            padding: padding,
            color: color ?? context.theme.primary,
            boxShadow: [
              if (!isHover.value)
                BoxShadow(
                  color: shadowColor ?? context.theme.onPrimaryContainer,
                  offset: const Offset(0, 4),
                  blurRadius: 4,
                  spreadRadius: 0,
                ),
            ],
          ),
          if(isHover.value)
            Opacity(
              opacity: _opacity,
              child: _container(
                context: context,
                width: width,
                height: height,
                padding: padding,
                color: colorOnPressed ?? context.theme.primaryContainer,
                boxShadow: [
                  BoxShadow(
                    color: shadowColorOnPressed ?? context.theme.secondary,
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
          Text(
            text,
            style: TextStyle(
              color: textColor ?? context.theme.onPrimary,
              fontSize: AppSize.ml,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

Widget _container({
  required BuildContext context,
  double? width,
  double? height,
  EdgeInsetsGeometry? padding,
  Color? color,
  List<BoxShadow>? boxShadow,
}) {
  return Container(
    width: width ?? double.infinity,
    height: height ?? _defaultHeight,
    padding: padding ?? const EdgeInsets.all(AppSize.s),
    decoration: BoxDecoration(
      color: color ?? context.theme.primary,
      borderRadius: BorderRadius.circular(AppSize.l),
      boxShadow: boxShadow,
    ),
  );
}
