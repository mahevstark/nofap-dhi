import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';
import 'package:nofapp/presentation/chat_two_screen/models/chat_two_model.dart';

/// A provider class for the ChatTwoScreen.
///
/// This provider manages the state of the ChatTwoScreen, including the
/// current chatTwoModelObj
class ChatTwoProvider extends ChangeNotifier {
  TextEditingController messageEditTextController = TextEditingController();

  ChatTwoModel chatTwoModelObj = ChatTwoModel();

  @override
  void dispose() {
    super.dispose();
    messageEditTextController.dispose();
  }
}
