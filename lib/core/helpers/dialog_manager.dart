import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/extensions/l10n_extension.dart';
import 'package:tki_app/core/extensions/num_extension.dart';

class DialogManager {
  /// if reverseActions is `true`, the confirm button will be on the right side
  static Future<bool?> showConfirmDialog({
    required BuildContext context,
    required String title,
    required String message,
    bool reverseActions = false,
  }) {
    final actions = <Widget>[
      TextButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) return AppColors.green.withOpacity(AppSize.m.fraction);
            return Colors.transparent; 
          }),
        ),
        child: Text(
          context.l10n.yes,
          style: const TextStyle(color: AppColors.greenLight, fontSize: AppSize.m18),
        ),
        onPressed: () {
          Navigator.of(context, rootNavigator: true).pop(true);
        },
      ),
      TextButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) return AppColors.red.withOpacity(AppSize.m.fraction);
            return Colors.transparent; 
          }),
        ),
        child: Text(context.l10n.no, style: const TextStyle(color: AppColors.redLight, fontSize: AppSize.m18)),
        onPressed: () {
          Navigator.of(context, rootNavigator: true).pop(false);
        },
      ),
    ];

    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.grey800,
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          content: Text(message, style: const TextStyle(fontSize: AppSize.m18)),
          actions: reverseActions ? actions.reversed.toList() : actions,
        );
      },
    );
  }
}
