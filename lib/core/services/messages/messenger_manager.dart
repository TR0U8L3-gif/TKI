part of 'messenger.dart';

class MessengerManager extends MessengerInterface {
  MessengerManager._({
    required MessengerInterface messenger,
    required List<ShowToast> queue,
    required StreamController<ShowToastEvent> streamController,
  })  : _queue = queue,
        _streamController = streamController,
        _messenger = messenger,
        _isStopped = false {
    _init();
  }

  factory MessengerManager() {
    return _instance ??= MessengerManager._(
      queue: [],
      streamController: StreamController<ShowToastEvent>(),
      messenger: MessengerToast(),
    );
  }

  static MessengerManager? _instance;
  final MessengerInterface _messenger;
  final List<ShowToast> _queue;
  final StreamController<ShowToastEvent> _streamController;
  final _history = <({int hex, int date})>[];
  final _historyData = <int, ({String message, String type})>{};
  final _userReaction = 600;
  bool _isStopped;
  bool _isProcessing = false;

  void _init() {
    _streamController.stream.listen(_run);
  }

  void _run(ShowToastEvent event) {
    if (event is ShowToastEventAdd) {
      _queue.add(event.toast);
      _streamController.add(ShowToastEventShow());
    }
    if (event is ShowToastEventShow) {
      if (_isStopped || _isProcessing) {
        return;
      }
      if (_queue.isNotEmpty) {
        _isProcessing = true;
        final toast = _queue.removeAt(0);
        _addToastToHistory(toast);
        _showToast(toast);
        Future.delayed(_getDuration(toast.toastLength, _userReaction), () {
          if (_isProcessing) {
            _streamController.add(ShowToastEventShow());
            _isProcessing = false;
          }
        });
      }
    }
  }

  void _addToastToHistory(ShowToast toast) {
    final key = Object.hash(toast.message, toast.type);
    _history.add((hex: key, date: DateTime.now().millisecondsSinceEpoch));
    _historyData[key] = (message: toast.message, type: toast.type.name);
  }

  void _showToast(ShowToast toast) {
    switch (toast.type) {
      case ToastType.info:
        _messenger.showInfoToast(
          toast.context,
          toast.message,
          toastLength: toast.toastLength,
          showDefaultLogo: toast.showDefaultLogo,
          logo: toast.logo,
          onStart: toast.onStart ?? stopToasts,
          onEnd: toast.onEnd ?? resumeToasts,
        );
        break;
      case ToastType.success:
        _messenger.showSuccessToast(
          toast.context,
          toast.message,
          toastLength: toast.toastLength,
          showDefaultLogo: toast.showDefaultLogo,
          logo: toast.logo,
          onStart: toast.onStart ?? stopToasts,
          onEnd: toast.onEnd ?? resumeToasts,
        );
        break;
      case ToastType.warning:
        _messenger.showWarningToast(
          toast.context,
          toast.message,
          toastLength: toast.toastLength,
          showDefaultLogo: toast.showDefaultLogo,
          logo: toast.logo,
          onStart: toast.onStart ?? stopToasts,
          onEnd: toast.onEnd ?? resumeToasts,
        );
        break;
      case ToastType.error:
        _messenger.showErrorToast(
          toast.context,
          toast.message,
          toastLength: toast.toastLength,
          showDefaultLogo: toast.showDefaultLogo,
          logo: toast.logo,
          onStart: toast.onStart ?? stopToasts,
          onEnd: toast.onEnd ?? resumeToasts,
        );
        break;
    }
  }

  void addToast(ShowToast toast) {
    _streamController.add(ShowToastEventAdd(toast));
  }

  void stopToasts() {
    _isStopped = true;
  }

  void resumeToasts() {
    _isStopped = false;
    _streamController.add(ShowToastEventShow());
  }

  List<ToastHistory> getHistory() {
    final result = <ToastHistory>[];
    for (var element in _history) {
      final data = _historyData[element.hex];
      if (data != null) {
        result.add(
            ToastHistory.fromRecord(data.message, data.type, element.date));
      }
    }
    return result;
  }

  @override
  void showErrorToast(BuildContext context, String message,
      {MessengerToastLength toastLength = MessengerToastLength.short,
      bool showDefaultLogo = true,
      Widget? logo,
      VoidCallback? onStart,
      VoidCallback? onEnd}) {
    addToast(ShowToast(
      context,
      message,
      type: ToastType.error,
      toastLength: toastLength,
      showDefaultLogo: showDefaultLogo,
      logo: logo,
      onStart: onStart,
      onEnd: onEnd,
    ));
  }

  @override
  void showInfoToast(BuildContext context, String message,
      {MessengerToastLength toastLength = MessengerToastLength.short,
      bool showDefaultLogo = true,
      Widget? logo,
      VoidCallback? onStart,
      VoidCallback? onEnd}) {
    addToast(ShowToast(
      context,
      message,
      type: ToastType.info,
      toastLength: toastLength,
      showDefaultLogo: showDefaultLogo,
      logo: logo,
      onStart: onStart,
      onEnd: onEnd,
    ));
  }

  @override
  void showSuccessToast(BuildContext context, String message,
      {MessengerToastLength toastLength = MessengerToastLength.short,
      bool showDefaultLogo = true,
      Widget? logo,
      VoidCallback? onStart,
      VoidCallback? onEnd}) {
    addToast(ShowToast(
      context,
      message,
      type: ToastType.success,
      toastLength: toastLength,
      showDefaultLogo: showDefaultLogo,
      logo: logo,
      onStart: onStart,
      onEnd: onEnd,
    ));
  }

  @override
  void showWarningToast(BuildContext context, String message,
      {MessengerToastLength toastLength = MessengerToastLength.short,
      bool showDefaultLogo = true,
      Widget? logo,
      VoidCallback? onStart,
      VoidCallback? onEnd}) {
    addToast(ShowToast(
      context,
      message,
      type: ToastType.warning,
      toastLength: toastLength,
      showDefaultLogo: showDefaultLogo,
      logo: logo,
      onStart: onStart,
      onEnd: onEnd,
    ));
  }

  void showToastFromCode(
      BuildContext context, String message, dynamic statusCode,
      {MessengerToastLength toastLength = MessengerToastLength.short,
      bool showDefaultLogo = true,
      Widget? logo,
      VoidCallback? onStart,
      VoidCallback? onEnd}) {
    var type = ToastType.error;

    if (statusCode is int) {
      if (statusCode >= 100 && statusCode < 200) {
        type = ToastType.info;
      } else if (statusCode >= 200 && statusCode < 300) {
        type = ToastType.success;
      } else if (statusCode >= 300 && statusCode < 400) {
        type = ToastType.warning;
      } else {
        type = ToastType.error;
      }
    }

    addToast(ShowToast(
      context,
      message,
      type: type,
      toastLength: toastLength,
      showDefaultLogo: showDefaultLogo,
      logo: logo,
      onStart: onStart,
      onEnd: onEnd,
    ));
  }

  @override
  void killDisplayedToast() {
    _messenger.killDisplayedToast();
    _messenger.killQueuedToasts();
    _isProcessing = false;
  }

  @override
  void killQueuedToasts() {
    _queue.clear();
  }

  Duration _getDuration(MessengerToastLength toastLength,
      [int milliseconds = 0]) {
    final toastDuration = getToastDuration(toastLength);
    return Duration(milliseconds: toastDuration.inMilliseconds + milliseconds);
  }
}

class ToastHistory {
  const ToastHistory(this.message, this.type, this.time);
  final String message;
  final ToastType type;
  final DateTime time;

  factory ToastHistory.fromRecord(
    String message,
    String type,
    int time,
  ) {
    return ToastHistory(
      message,
      ToastType.values.firstWhere((element) => element.name == type,
          orElse: () => ToastType.info),
      DateTime.fromMillisecondsSinceEpoch(time),
    );
  }

  @override
  String toString() {
    return 'ToastHistory{message: $message, type: ${type.name}, time: $time}';
  }
}

class ShowToast {
  const ShowToast(
    this.context,
    this.message, {
    this.type = ToastType.info,
    this.toastLength = MessengerToastLength.short,
    this.showDefaultLogo = true,
    this.logo,
    this.onStart,
    this.onEnd,
  });

  final BuildContext context;
  final String message;
  final ToastType type;
  final MessengerToastLength toastLength;
  final bool showDefaultLogo;
  final Widget? logo;
  final VoidCallback? onStart;
  final VoidCallback? onEnd;
}

abstract class ShowToastEvent {}

class ShowToastEventAdd extends ShowToastEvent {
  ShowToastEventAdd(this.toast);
  final ShowToast toast;
}

class ShowToastEventShow extends ShowToastEvent {}
