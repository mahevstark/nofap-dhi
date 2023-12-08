import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/group_name_screen/models/group_name_model.dart';/// A provider class for the GroupNameScreen.
///
/// This provider manages the state of the GroupNameScreen, including the
/// current groupNameModelObj

// ignore_for_file: must_be_immutable
class GroupNameProvider extends ChangeNotifier {GroupNameModel groupNameModelObj = GroupNameModel();

@override void dispose() { super.dispose(); } 
 }
