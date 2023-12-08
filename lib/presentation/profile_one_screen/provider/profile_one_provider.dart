import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/profile_one_screen/models/profile_one_model.dart';/// A provider class for the ProfileOneScreen.
///
/// This provider manages the state of the ProfileOneScreen, including the
/// current profileOneModelObj

// ignore_for_file: must_be_immutable
class ProfileOneProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

ProfileOneModel profileOneModelObj = ProfileOneModel();

@override void dispose() { super.dispose(); nameController.dispose(); } 
 }
