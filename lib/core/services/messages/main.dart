import 'package:tki_app/core/services/messages/messages_manager.dart';

void main() async {
  final messenger = MessagesManager();
  final messenger2 = MessagesManager();
  
  print(DateTime.now());
  await messenger.addToast(ShowToast(message: "elo1"));
  await messenger.addToast(ShowToast(message: "elo2"));
  await messenger.stopToasts();
  await messenger.addToast(ShowToast(message: "elo3"));
  await messenger.addToast(ShowToast(message: "elo4"));
  await Future.delayed(const Duration(seconds: 4), () async {
    await messenger.resumeToasts();
  });
}

