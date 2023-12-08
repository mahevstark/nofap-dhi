import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';
import 'package:nofapp/presentation/help_center_one_tab_container_screen/models/help_center_one_tab_container_model.dart';

/// A provider class for the HelpCenterOneTabContainerScreen.
///
/// This provider manages the state of the HelpCenterOneTabContainerScreen, including the
/// current helpCenterOneTabContainerModelObj
class HelpCenterOneTabContainerProvider extends ChangeNotifier {
  HelpCenterOneTabContainerModel helpCenterOneTabContainerModelObj =
      HelpCenterOneTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
