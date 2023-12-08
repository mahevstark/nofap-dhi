import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/generate_code_three_screen/models/generate_code_three_model.dart';/// A provider class for the GenerateCodeThreeScreen.
///
/// This provider manages the state of the GenerateCodeThreeScreen, including the
/// current generateCodeThreeModelObj

// ignore_for_file: must_be_immutable
class GenerateCodeThreeProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

GenerateCodeThreeModel generateCodeThreeModelObj = GenerateCodeThreeModel();

@override void dispose() { super.dispose(); } 
 }
