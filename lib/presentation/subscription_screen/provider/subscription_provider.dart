import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/subscription_screen/models/subscription_model.dart';import '../models/subscriptionlist1_item_model.dart';/// A provider class for the SubscriptionScreen.
///
/// This provider manages the state of the SubscriptionScreen, including the
/// current subscriptionModelObj

// ignore_for_file: must_be_immutable
class SubscriptionProvider extends ChangeNotifier {SubscriptionModel subscriptionModelObj = SubscriptionModel();

@override void dispose() { super.dispose(); } 
 }
