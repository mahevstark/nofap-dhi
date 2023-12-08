import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/community_screen/models/community_model.dart';/// A provider class for the CommunityScreen.
///
/// This provider manages the state of the CommunityScreen, including the
/// current communityModelObj

// ignore_for_file: must_be_immutable
class CommunityProvider extends ChangeNotifier {CommunityModel communityModelObj = CommunityModel();

@override void dispose() { super.dispose(); } 
 }
