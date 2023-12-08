import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/enter_new_password_screen/models/enter_new_password_model.dart';/// A provider class for the EnterNewPasswordScreen.
///
/// This provider manages the state of the EnterNewPasswordScreen, including the
/// current enterNewPasswordModelObj

// ignore_for_file: must_be_immutable
class EnterNewPasswordProvider extends ChangeNotifier {TextEditingController twentyOnePasswordEditTextController = TextEditingController();

TextEditingController twentyOneConfirmPasswordEditTextController = TextEditingController();

EnterNewPasswordModel enterNewPasswordModelObj = EnterNewPasswordModel();

@override void dispose() { super.dispose(); twentyOnePasswordEditTextController.dispose(); twentyOneConfirmPasswordEditTextController.dispose(); } 
 }
