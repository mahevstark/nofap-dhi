import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/chat_one_screen/models/chat_one_model.dart';/// A provider class for the ChatOneScreen.
///
/// This provider manages the state of the ChatOneScreen, including the
/// current chatOneModelObj

// ignore_for_file: must_be_immutable
class ChatOneProvider extends ChangeNotifier {TextEditingController frameFiftyFiveController = TextEditingController();

TextEditingController frameFiftyNineController = TextEditingController();

TextEditingController messageController = TextEditingController();

ChatOneModel chatOneModelObj = ChatOneModel();

@override void dispose() { super.dispose(); frameFiftyFiveController.dispose(); frameFiftyNineController.dispose(); messageController.dispose(); } 
 }
