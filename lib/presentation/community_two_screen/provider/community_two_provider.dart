import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/community_two_screen/models/community_two_model.dart';/// A provider class for the CommunityTwoScreen.
///
/// This provider manages the state of the CommunityTwoScreen, including the
/// current communityTwoModelObj

// ignore_for_file: must_be_immutable
class CommunityTwoProvider extends ChangeNotifier {CommunityTwoModel communityTwoModelObj = CommunityTwoModel();

@override void dispose() { super.dispose(); } 
 }
