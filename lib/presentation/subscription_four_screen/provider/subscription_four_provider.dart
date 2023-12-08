import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/subscription_four_screen/models/subscription_four_model.dart';/// A provider class for the SubscriptionFourScreen.
///
/// This provider manages the state of the SubscriptionFourScreen, including the
/// current subscriptionFourModelObj

// ignore_for_file: must_be_immutable
class SubscriptionFourProvider extends ChangeNotifier {SubscriptionFourModel subscriptionFourModelObj = SubscriptionFourModel();

@override void dispose() { super.dispose(); } 
 }
