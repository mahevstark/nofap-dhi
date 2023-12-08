import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/forgot_pasword_screen/models/forgot_pasword_model.dart';/// A provider class for the ForgotPaswordScreen.
///
/// This provider manages the state of the ForgotPaswordScreen, including the
/// current forgotPaswordModelObj

// ignore_for_file: must_be_immutable
class ForgotPaswordProvider extends ChangeNotifier {TextEditingController phoneNumberController = TextEditingController();

ForgotPaswordModel forgotPaswordModelObj = ForgotPaswordModel();

@override void dispose() { super.dispose(); phoneNumberController.dispose(); } 
 }
