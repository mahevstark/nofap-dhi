import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/home_screen/models/home_model.dart';/// A provider class for the HomeScreen.
///
/// This provider manages the state of the HomeScreen, including the
/// current homeModelObj

// ignore_for_file: must_be_immutable
class HomeProvider extends ChangeNotifier {HomeModel homeModelObj = HomeModel();

@override void dispose() { super.dispose(); } 
 }
