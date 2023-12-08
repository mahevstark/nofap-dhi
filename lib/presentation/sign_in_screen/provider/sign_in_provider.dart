import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/sign_in_screen/models/sign_in_model.dart';/// A provider class for the SignInScreen.
///
/// This provider manages the state of the SignInScreen, including the
/// current signInModelObj

// ignore_for_file: must_be_immutable
class SignInProvider extends ChangeNotifier {TextEditingController phoneNumberController = TextEditingController();

TextEditingController passwordController = TextEditingController();

SignInModel signInModelObj = SignInModel();

bool rememberMe = false;

@override void dispose() { super.dispose(); phoneNumberController.dispose(); passwordController.dispose(); } 
void changeCheckBox(bool value) { rememberMe = value; notifyListeners(); } 
 }
