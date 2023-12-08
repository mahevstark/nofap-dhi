import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/blocker_three_screen/models/blocker_three_model.dart';/// A provider class for the BlockerThreeScreen.
///
/// This provider manages the state of the BlockerThreeScreen, including the
/// current blockerThreeModelObj

// ignore_for_file: must_be_immutable
class BlockerThreeProvider extends ChangeNotifier {BlockerThreeModel blockerThreeModelObj = BlockerThreeModel();

bool isSelectedSwitch = false;

@override void dispose() { super.dispose(); } 
void changeSwitchBox(bool value) { isSelectedSwitch = value; notifyListeners(); } 
 }
