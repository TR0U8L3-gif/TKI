part of 'messenger.dart';

abstract class MessengerInterface {
  void showInfoToast(
    BuildContext context,
    String message,
    String description, {
    MessengerToastLength toastLength = MessengerToastLength.short,
    bool showDefaultLogo = true,
    Widget? logo,
    VoidCallback? onEnd ,
    VoidCallback? onStart,
  });

  void showSuccessToast(
    BuildContext context,
    String message, 
    String description, {
    MessengerToastLength toastLength = MessengerToastLength.short,
    bool showDefaultLogo = true,
    Widget? logo,
    VoidCallback? onEnd,
    VoidCallback? onStart,
  });

  void showErrorToast(
    BuildContext context,
    String message, 
    String description, {
    MessengerToastLength toastLength = MessengerToastLength.short,
    bool showDefaultLogo = true,
    Widget? logo,
    VoidCallback? onEnd,
    VoidCallback? onStart,
  });

  void showWarningToast(
    BuildContext context,
    String message,
    String description, {
    MessengerToastLength toastLength = MessengerToastLength.short,
    bool showDefaultLogo = true,
    Widget? logo,
    VoidCallback? onEnd,
    VoidCallback? onStart,
  });

  void killQueuedToasts();

  void killDisplayedToast();

  Duration getToastDuration(MessengerToastLength toastLength) {
    switch (toastLength) {
      case MessengerToastLength.short:
        return const Duration(seconds: 2);
      case MessengerToastLength.long:
        return const Duration(seconds: 5);
    }
  }
}

enum ToastType {
  /// Indicates informational message.
  info,

  /// Represents confirmation or success message
  success,

  /// Indicates error message.
  error,

  /// Represents warning message
  warning,
}

enum MessengerToastLength {
  /// Show Short toast for 2 sec
  short,

  /// Show Long toast for 5 sec
  long,
}