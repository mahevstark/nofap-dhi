import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/delete_account_screen/models/delete_account_model.dart';/// A provider class for the DeleteAccountScreen.
///
/// This provider manages the state of the DeleteAccountScreen, including the
/// current deleteAccountModelObj

// ignore_for_file: must_be_immutable
class DeleteAccountProvider extends ChangeNotifier {TextEditingController passwordController = TextEditingController();

DeleteAccountModel deleteAccountModelObj = DeleteAccountModel();

@override void dispose() { super.dispose(); passwordController.dispose(); } 
 }
