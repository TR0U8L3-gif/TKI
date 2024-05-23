import 'dart:async';

class MessagesManager {
  MessagesManager._({
    required List<ShowToast> queue,
    required StreamController<ShowToastEvent> streamController,
  })  : _queue = queue,
        _streamController = streamController,
        _isStopped = false {
    _init();
  }

  factory MessagesManager() {
    return _instance ??= MessagesManager._(
      queue: [],
      streamController: StreamController<ShowToastEvent>(),
    );
  }

  static MessagesManager? _instance;
  final List<ShowToast> _queue;
  final StreamController<ShowToastEvent> _streamController;
  bool _isStopped;
  bool _isProcessing = false;

  void _init() {
    _streamController.stream.listen((event) async => _run(event));
  }

  Future<void> _run(ShowToastEvent event) async {
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
        _showToast(toast);
        Future.delayed(toast.toastLength + toast.toastFade,
            () {
              _isProcessing = false;
              _streamController.add(ShowToastEventShow());
            });
      }
    }
  }

  void _showToast(ShowToast toast) {
    print('Showing toast: ${toast.message} - ${DateTime.now()}');
  }

  Future<void> addToast(ShowToast toast) async {
    _streamController.add(ShowToastEventAdd(toast));
  }

  Future<void> stopToasts() async {
    _isStopped = true;
  }

  Future<void> resumeToasts() async {
    _isStopped = false;
    _streamController.add(ShowToastEventShow());
  }
}

class ShowToast {
  ShowToast({
    required this.message,
    this.toastLength = const Duration(milliseconds: 2000),
    this.toastFade = const Duration(milliseconds: 200),
  });
  final String message;
  final Duration toastLength;
  final Duration toastFade;
}

abstract class ShowToastEvent {}

class ShowToastEventAdd extends ShowToastEvent {
  ShowToastEventAdd(this.toast);
  final ShowToast toast;
}

class ShowToastEventShow extends ShowToastEvent {}


// class ShowToast {
//   const ShowToast({
//     required this.context,
//     required this.type,
//     required this.message, 
//     this.toastLength = MessengerToastLength.short,
//     this.showDefaultLogo = true,
//     this.logo,
//   });

//   final ToastType type;
//   final BuildContext context;
//   final String message;
//   final MessengerToastLength toastLength;
//   final bool showDefaultLogo; 
//   final Widget? logo;
// }