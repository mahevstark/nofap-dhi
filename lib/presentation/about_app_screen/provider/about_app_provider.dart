import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/about_app_screen/models/about_app_model.dart';/// A provider class for the AboutAppScreen.
///
/// This provider manages the state of the AboutAppScreen, including the
/// current aboutAppModelObj

// ignore_for_file: must_be_immutable
class AboutAppProvider extends ChangeNotifier {AboutAppModel aboutAppModelObj = AboutAppModel();

@override void dispose() { super.dispose(); } 
 }
