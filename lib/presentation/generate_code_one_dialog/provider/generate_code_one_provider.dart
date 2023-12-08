import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';
import 'package:nofapp/presentation/generate_code_one_dialog/models/generate_code_one_model.dart';

/// A provider class for the GenerateCodeOneDialog.
///
/// This provider manages the state of the GenerateCodeOneDialog, including the
/// current generateCodeOneModelObj
class GenerateCodeOneProvider extends ChangeNotifier {
  GenerateCodeOneModel generateCodeOneModelObj = GenerateCodeOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
