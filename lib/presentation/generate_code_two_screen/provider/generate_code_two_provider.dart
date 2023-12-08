import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/generate_code_two_screen/models/generate_code_two_model.dart';/// A provider class for the GenerateCodeTwoScreen.
///
/// This provider manages the state of the GenerateCodeTwoScreen, including the
/// current generateCodeTwoModelObj

// ignore_for_file: must_be_immutable
class GenerateCodeTwoProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

GenerateCodeTwoModel generateCodeTwoModelObj = GenerateCodeTwoModel();

@override void dispose() { super.dispose(); } 
 }
