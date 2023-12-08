import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';
import 'package:nofapp/presentation/generate_code_dialog/models/generate_code_model.dart';

/// A provider class for the GenerateCodeDialog.
///
/// This provider manages the state of the GenerateCodeDialog, including the
/// current generateCodeModelObj
class GenerateCodeProvider extends ChangeNotifier {
  GenerateCodeModel generateCodeModelObj = GenerateCodeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
