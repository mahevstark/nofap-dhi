import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/delete_account_one_screen/models/delete_account_one_model.dart';/// A provider class for the DeleteAccountOneScreen.
///
/// This provider manages the state of the DeleteAccountOneScreen, including the
/// current deleteAccountOneModelObj

// ignore_for_file: must_be_immutable
class DeleteAccountOneProvider extends ChangeNotifier {TextEditingController otpController = TextEditingController();

DeleteAccountOneModel deleteAccountOneModelObj = DeleteAccountOneModel();

@override void dispose() { super.dispose(); } 
 }
