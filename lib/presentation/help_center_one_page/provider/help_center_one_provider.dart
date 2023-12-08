import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';
import 'package:nofapp/presentation/help_center_one_page/models/help_center_one_model.dart';

/// A provider class for the HelpCenterOnePage.
///
/// This provider manages the state of the HelpCenterOnePage, including the
/// current helpCenterOneModelObj
class HelpCenterOneProvider extends ChangeNotifier {
  HelpCenterOneModel helpCenterOneModelObj = HelpCenterOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
