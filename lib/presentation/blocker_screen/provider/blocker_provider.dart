import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/blocker_screen/models/blocker_model.dart';/// A provider class for the BlockerScreen.
///
/// This provider manages the state of the BlockerScreen, including the
/// current blockerModelObj

// ignore_for_file: must_be_immutable
class BlockerProvider extends ChangeNotifier {TextEditingController weburlController = TextEditingController();

BlockerModel blockerModelObj = BlockerModel();

@override void dispose() { super.dispose(); weburlController.dispose(); } 
 }
