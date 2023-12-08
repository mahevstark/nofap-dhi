import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/subscription_two_screen/models/subscription_two_model.dart';/// A provider class for the SubscriptionTwoScreen.
///
/// This provider manages the state of the SubscriptionTwoScreen, including the
/// current subscriptionTwoModelObj

// ignore_for_file: must_be_immutable
class SubscriptionTwoProvider extends ChangeNotifier {SubscriptionTwoModel subscriptionTwoModelObj = SubscriptionTwoModel();

@override void dispose() { super.dispose(); } 
 }
