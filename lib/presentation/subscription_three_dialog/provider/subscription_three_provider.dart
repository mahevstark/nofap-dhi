import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';
import 'package:nofapp/presentation/subscription_three_dialog/models/subscription_three_model.dart';

/// A provider class for the SubscriptionThreeDialog.
///
/// This provider manages the state of the SubscriptionThreeDialog, including the
/// current subscriptionThreeModelObj
class SubscriptionThreeProvider extends ChangeNotifier {
  SubscriptionThreeModel subscriptionThreeModelObj = SubscriptionThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
