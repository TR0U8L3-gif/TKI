part of 'messenger.dart';

class MessengerToast extends MessengerInterface {
  /// Android API level 30 custom toast is deprecated.
  /// This feature allows you to create a custom one.
  static Future<void> showToast(
    BuildContext context,
    String message, 
    String description, {
    Duration toastDuration =
        const Duration(milliseconds: AppSize.durationExtraLarge),
    Duration fadeDuration = const Duration(milliseconds: AppSize.durationSmall),
    ToastGravity gravity = ToastGravity.BOTTOM,
    bool showDefaultLogo = true,
    Widget? logo,
    bool isDismissible = true,
    ToastType type = ToastType.info,
    VoidCallback? onEnd,
    VoidCallback? onStart,
  }) async {
    if (!context.mounted) {
      Fimber.w('toast build context is not mounted');
      return;
    }

    FToast()
      ..init(context)
      ..showToast(
        child: MessengerToastWidget(
          message: message,
          description: description,
          logo: logo,
          showDefaultLogo: showDefaultLogo,
          type: type,
          onStart: onStart,
          onEnd: onEnd,
        ),
        gravity: gravity,
        toastDuration: toastDuration,
        fadeDuration: fadeDuration,
        isDismissable: isDismissible,
      );
  }

  @override
  void showInfoToast(
    BuildContext context,
    String message, 
    String description, {
    MessengerToastLength toastLength = MessengerToastLength.short,
    bool showDefaultLogo = true,
    Widget? logo,
    VoidCallback? onEnd,
    VoidCallback? onStart,
  }) =>
      showToast(
        context,
        message,
        description,
        toastDuration: getToastDuration(toastLength),
        showDefaultLogo: showDefaultLogo,
        logo: logo,
        onStart: onStart,
        onEnd: onEnd,
      );

  @override
  void showSuccessToast(
    BuildContext context,
    String message, 
    String description, {
    MessengerToastLength toastLength = MessengerToastLength.short,
    bool showDefaultLogo = true,
    Widget? logo,
    VoidCallback? onEnd,
    VoidCallback? onStart,
  }) =>
      showToast(
        context,
        message,
        description,
        type: ToastType.success,
        toastDuration: getToastDuration(toastLength),
        showDefaultLogo: showDefaultLogo,
        logo: logo,
        onStart: onStart,
        onEnd: onEnd,
      );

  @override
  void showErrorToast(
    BuildContext context,
    String message, 
    String description, {
    MessengerToastLength toastLength = MessengerToastLength.short,
    bool showDefaultLogo = true,
    Widget? logo,
    VoidCallback? onEnd,
    VoidCallback? onStart,
  }) =>
      showToast(
        context,
        message,
        description,
        type: ToastType.error,
        toastDuration: getToastDuration(toastLength),
        showDefaultLogo: showDefaultLogo,
        logo: logo,
        onStart: onStart,
        onEnd: onEnd,
      );

  @override
  void showWarningToast(
    BuildContext context,
    String message, 
    String description, {
    MessengerToastLength toastLength = MessengerToastLength.short,
    bool showDefaultLogo = true,
    Widget? logo,
    VoidCallback? onEnd,
    VoidCallback? onStart,
  }) =>
      showToast(
        context,
        message,
        description,
        type: ToastType.warning,
        toastDuration: getToastDuration(toastLength),
        showDefaultLogo: showDefaultLogo,
        logo: logo,
        onStart: onStart,
        onEnd: onEnd,
      );

  @override
  void killDisplayedToast() {
    FToast().removeCustomToast();
  }

  @override
  void killQueuedToasts() {
    FToast().removeQueuedCustomToasts();
  }
}
