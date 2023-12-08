import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/community_one_page/models/community_one_model.dart';import '../models/userprofilelist_item_model.dart';/// A provider class for the CommunityOnePage.
///
/// This provider manages the state of the CommunityOnePage, including the
/// current communityOneModelObj

// ignore_for_file: must_be_immutable
class CommunityOneProvider extends ChangeNotifier {CommunityOneModel communityOneModelObj = CommunityOneModel();

@override void dispose() { super.dispose(); } 
 }
