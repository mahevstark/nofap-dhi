import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';
import 'package:nofapp/presentation/daily_task_dialog/models/daily_task_model.dart';

/// A provider class for the DailyTaskDialog.
///
/// This provider manages the state of the DailyTaskDialog, including the
/// current dailyTaskModelObj
class DailyTaskProvider extends ChangeNotifier {
  DailyTaskModel dailyTaskModelObj = DailyTaskModel();

  @override
  void dispose() {
    super.dispose();
  }
}
