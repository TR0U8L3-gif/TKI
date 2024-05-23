import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/common/widgets/app_toast.dart';
import 'package:tki_app/core/utils/enums.dart';

class Messenger {
  /// Android API level 30 custom toast is deprecated.
  /// This feature allows you to create a custom one.
  static Future<void> showToast(
    BuildContext context,
    String message, {
    Duration toastDuration = const Duration(milliseconds: AppSize.durationExtraLarge),
    Duration fadeDuration = const Duration(milliseconds: AppSize.durationSmall),
    ToastGravity gravity = ToastGravity.BOTTOM,
    bool showDefaultLogo = true,
    Widget? logo,
    bool isDismissible = true,
    ToastType type = ToastType.info,
  }) async {
    if (!context.mounted) {
      Fimber.w('toast build context is not mounted');
      return;
    }
    
    FToast()
      ..init(context)
      ..showToast(
        child: AppToast(
          message: message,
          logo: logo,
          showDefaultLogo: showDefaultLogo,
          type: type,
        ),
        gravity: gravity,
        toastDuration: toastDuration,
        fadeDuration: fadeDuration,
        isDismissable: isDismissible,
      );
                  
  }

  static void showInfoToast(
    BuildContext context,
    String message, {
    MessengerToastLength toastLength = MessengerToastLength.short,
    bool showDefaultLogo = true,
    Widget? logo,
  }) =>
      showToast(
        context,
        message,
        toastDuration: _getToastDuration(toastLength),
        showDefaultLogo: showDefaultLogo,
        logo: logo,
      );

  static void showSuccessToast(
    BuildContext context,
    String message, {
    MessengerToastLength toastLength = MessengerToastLength.short,
    bool showDefaultLogo = true,
    Widget? logo,
  }) =>
      showToast(
        context,
        message,
        type: ToastType.success,
        toastDuration: _getToastDuration(toastLength),
        showDefaultLogo: showDefaultLogo,
        logo: logo,
      );

  static void showErrorToast(
    BuildContext context,
    String message, {
    MessengerToastLength toastLength = MessengerToastLength.short,
    bool showDefaultLogo = true,
    Widget? logo,
  }) =>
      showToast(
        context,
        message,
        type: ToastType.error,
        toastDuration: _getToastDuration(toastLength),
        showDefaultLogo: showDefaultLogo,
        logo: logo,
      );

  static void showWarningToast(
    BuildContext context,
    String message, {
    MessengerToastLength toastLength = MessengerToastLength.short,
    bool showDefaultLogo = true,
    Widget? logo,
  }) =>
      showToast(
        context,
        message,
        type: ToastType.warning,
        toastDuration: _getToastDuration(toastLength),
        showDefaultLogo: showDefaultLogo,
        logo: logo,
      );

  static Duration _getToastDuration(MessengerToastLength toastLength) {
    switch (toastLength) {
      case MessengerToastLength.short:
        return const Duration(seconds: 2);
      case MessengerToastLength.long:
        return const Duration(seconds: 5);
    }
  }

}
