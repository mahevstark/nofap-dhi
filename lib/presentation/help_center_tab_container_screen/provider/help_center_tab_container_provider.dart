import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/help_center_tab_container_screen/models/help_center_tab_container_model.dart';/// A provider class for the HelpCenterTabContainerScreen.
///
/// This provider manages the state of the HelpCenterTabContainerScreen, including the
/// current helpCenterTabContainerModelObj

// ignore_for_file: must_be_immutable
class HelpCenterTabContainerProvider extends ChangeNotifier {HelpCenterTabContainerModel helpCenterTabContainerModelObj = HelpCenterTabContainerModel();

@override void dispose() { super.dispose(); } 
 }
