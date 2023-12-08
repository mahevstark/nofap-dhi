import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/profile_screen/models/profile_model.dart';/// A provider class for the ProfileScreen.
///
/// This provider manages the state of the ProfileScreen, including the
/// current profileModelObj

// ignore_for_file: must_be_immutable
class ProfileProvider extends ChangeNotifier {TextEditingController firstNameController = TextEditingController();

ProfileModel profileModelObj = ProfileModel();

@override void dispose() { super.dispose(); firstNameController.dispose(); } 
 }
