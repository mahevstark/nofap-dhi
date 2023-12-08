import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/profile_creation_screen/models/profile_creation_model.dart';/// A provider class for the ProfileCreationScreen.
///
/// This provider manages the state of the ProfileCreationScreen, including the
/// current profileCreationModelObj

// ignore_for_file: must_be_immutable
class ProfileCreationProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

ProfileCreationModel profileCreationModelObj = ProfileCreationModel();

@override void dispose() { super.dispose(); nameController.dispose(); } 
 }
