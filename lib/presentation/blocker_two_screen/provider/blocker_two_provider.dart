import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/blocker_two_screen/models/blocker_two_model.dart';/// A provider class for the BlockerTwoScreen.
///
/// This provider manages the state of the BlockerTwoScreen, including the
/// current blockerTwoModelObj

// ignore_for_file: must_be_immutable
class BlockerTwoProvider extends ChangeNotifier {BlockerTwoModel blockerTwoModelObj = BlockerTwoModel();

bool isSelectedSwitch = false;

@override void dispose() { super.dispose(); } 
void changeSwitchBox(bool value) { isSelectedSwitch = value; notifyListeners(); } 
 }
