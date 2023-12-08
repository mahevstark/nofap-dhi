import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/notifications_screen/models/notifications_model.dart';import '../models/notificationslist_item_model.dart';/// A provider class for the NotificationsScreen.
///
/// This provider manages the state of the NotificationsScreen, including the
/// current notificationsModelObj

// ignore_for_file: must_be_immutable
class NotificationsProvider extends ChangeNotifier {NotificationsModel notificationsModelObj = NotificationsModel();

@override void dispose() { super.dispose(); } 
 }
