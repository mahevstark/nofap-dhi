import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/daily_task_two_screen/models/daily_task_two_model.dart';/// A provider class for the DailyTaskTwoScreen.
///
/// This provider manages the state of the DailyTaskTwoScreen, including the
/// current dailyTaskTwoModelObj

// ignore_for_file: must_be_immutable
class DailyTaskTwoProvider extends ChangeNotifier {TextEditingController taskController = TextEditingController();

DailyTaskTwoModel dailyTaskTwoModelObj = DailyTaskTwoModel();

@override void dispose() { super.dispose(); taskController.dispose(); } 
 }
