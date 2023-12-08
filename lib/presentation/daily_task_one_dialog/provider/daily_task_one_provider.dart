import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';
import 'package:nofapp/presentation/daily_task_one_dialog/models/daily_task_one_model.dart';

/// A provider class for the DailyTaskOneDialog.
///
/// This provider manages the state of the DailyTaskOneDialog, including the
/// current dailyTaskOneModelObj
class DailyTaskOneProvider extends ChangeNotifier {
  DailyTaskOneModel dailyTaskOneModelObj = DailyTaskOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
