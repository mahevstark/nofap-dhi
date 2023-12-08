import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/community_one_container_screen/models/community_one_container_model.dart';/// A provider class for the CommunityOneContainerScreen.
///
/// This provider manages the state of the CommunityOneContainerScreen, including the
/// current communityOneContainerModelObj

// ignore_for_file: must_be_immutable
class CommunityOneContainerProvider extends ChangeNotifier {CommunityOneContainerModel communityOneContainerModelObj = CommunityOneContainerModel();

@override void dispose() { super.dispose(); } 
 }
