import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/chat_three_screen/models/chat_three_model.dart';/// A provider class for the ChatThreeScreen.
///
/// This provider manages the state of the ChatThreeScreen, including the
/// current chatThreeModelObj

// ignore_for_file: must_be_immutable
class ChatThreeProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

TextEditingController searchController1 = TextEditingController();

TextEditingController frameFiftyFiveEditTextController = TextEditingController();

TextEditingController frameFiftyNineEditTextController = TextEditingController();

TextEditingController messageEditTextController = TextEditingController();

ChatThreeModel chatThreeModelObj = ChatThreeModel();

@override void dispose() { super.dispose(); searchController.dispose(); searchController1.dispose(); frameFiftyFiveEditTextController.dispose(); frameFiftyNineEditTextController.dispose(); messageEditTextController.dispose(); } 
 }
