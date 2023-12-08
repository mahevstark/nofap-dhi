import '../community_one_page/widgets/userprofilelist_item_widget.dart';import 'models/community_one_model.dart';import 'models/userprofilelist_item_model.dart';import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/app_bar/appbar_subtitle.dart';import 'package:nofapp/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:nofapp/widgets/app_bar/custom_app_bar.dart';import 'provider/community_one_provider.dart';class CommunityOnePage extends StatefulWidget {const CommunityOnePage({Key? key}) : super(key: key);

@override CommunityOnePageState createState() =>  CommunityOnePageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => CommunityOneProvider(), child: CommunityOnePage()); } 
 }
class CommunityOnePageState extends State<CommunityOnePage> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillOnErrorContainer, child: Column(children: [_buildVectorTwoStack(context), SizedBox(height: 24.v), _buildUserProfileList(context)])))); } 
/// Section Widget
Widget _buildVectorTwoStack(BuildContext context) { return SizedBox(height: 112.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgVector2, height: 112.v, width: 430.h, alignment: Alignment.center), Align(alignment: Alignment.topCenter, child: Container(padding: EdgeInsets.symmetric(vertical: 24.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup147), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 17.v), CustomAppBar(height: 33.v, title: AppbarSubtitle(text: "lbl_community".tr, margin: EdgeInsets.only(left: 20.h)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgNotification, margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 1.v), onTap: () {onTapNotification(context);})])])))])); } 
/// Section Widget
Widget _buildUserProfileList(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 20.h, right: 6.h), child: Consumer<CommunityOneProvider>(builder: (context, provider, child) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 20.v);}, itemCount: provider.communityOneModelObj.userprofilelistItemList.length, itemBuilder: (context, index) {UserprofilelistItemModel model = provider.communityOneModelObj.userprofilelistItemList[index]; return UserprofilelistItemWidget(model, onTapButtonText: () {onTapButtonText(context);});});}))); } 
/// Navigates to the commentsScreen when the action is triggered.
onTapButtonText(BuildContext context) { NavigatorService.pushNamed(AppRoutes.commentsScreen); } 
/// Navigates to the notificationsScreen when the action is triggered.
onTapNotification(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationsScreen, ); } 
 }
