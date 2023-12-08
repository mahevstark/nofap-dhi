import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/change_password_screen/models/change_password_model.dart';/// A provider class for the ChangePasswordScreen.
///
/// This provider manages the state of the ChangePasswordScreen, including the
/// current changePasswordModelObj

// ignore_for_file: must_be_immutable
class ChangePasswordProvider extends ChangeNotifier {TextEditingController currentPasswordEditTextController = TextEditingController();

TextEditingController newPasswordEditTextController = TextEditingController();

TextEditingController confirmPasswordEditTextController = TextEditingController();

ChangePasswordModel changePasswordModelObj = ChangePasswordModel();

@override void dispose() { super.dispose(); currentPasswordEditTextController.dispose(); newPasswordEditTextController.dispose(); confirmPasswordEditTextController.dispose(); } 
 }
