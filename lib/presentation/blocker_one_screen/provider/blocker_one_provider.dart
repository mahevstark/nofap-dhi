import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/blocker_one_screen/models/blocker_one_model.dart';/// A provider class for the BlockerOneScreen.
///
/// This provider manages the state of the BlockerOneScreen, including the
/// current blockerOneModelObj

// ignore_for_file: must_be_immutable
class BlockerOneProvider extends ChangeNotifier {BlockerOneModel blockerOneModelObj = BlockerOneModel();

bool isSelectedSwitch = false;

@override void dispose() { super.dispose(); } 
void changeSwitchBox(bool value) { isSelectedSwitch = value; notifyListeners(); } 
 }
