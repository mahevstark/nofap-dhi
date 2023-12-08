import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/terms_of_use_screen/models/terms_of_use_model.dart';/// A provider class for the TermsOfUseScreen.
///
/// This provider manages the state of the TermsOfUseScreen, including the
/// current termsOfUseModelObj

// ignore_for_file: must_be_immutable
class TermsOfUseProvider extends ChangeNotifier {TermsOfUseModel termsOfUseModelObj = TermsOfUseModel();

@override void dispose() { super.dispose(); } 
 }
