import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/daily_task_three_screen/models/daily_task_three_model.dart';import '../models/exercisecomponentlist_item_model.dart';/// A provider class for the DailyTaskThreeScreen.
///
/// This provider manages the state of the DailyTaskThreeScreen, including the
/// current dailyTaskThreeModelObj

// ignore_for_file: must_be_immutable
class DailyTaskThreeProvider extends ChangeNotifier {DailyTaskThreeModel dailyTaskThreeModelObj = DailyTaskThreeModel();

@override void dispose() { super.dispose(); } 
 }
