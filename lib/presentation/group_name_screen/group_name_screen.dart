import 'models/group_name_model.dart';import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/app_bar/appbar_leading_image.dart';import 'package:nofapp/widgets/app_bar/appbar_title_circleimage_one.dart';import 'package:nofapp/widgets/app_bar/custom_app_bar.dart';import 'package:nofapp/widgets/custom_icon_button.dart';import 'package:nofapp/widgets/custom_outlined_button.dart';import 'provider/group_name_provider.dart';class GroupNameScreen extends StatefulWidget {const GroupNameScreen({Key? key}) : super(key: key);

@override GroupNameScreenState createState() =>  GroupNameScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => GroupNameProvider(), child: GroupNameScreen()); } 
 }
class GroupNameScreenState extends State<GroupNameScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 19.v), child: Padding(padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 5.v), child: Column(children: [Text("lbl_phase_1".tr, style: CustomTextStyles.titleLargeBluegray900), SizedBox(height: 14.v), Text("msg_group_9_participants".tr, style: CustomTextStyles.bodyLargeBluegray90018), SizedBox(height: 19.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_description".tr, style: CustomTextStyles.titleMediumBluegray900SemiBold)), SizedBox(height: 10.v), Align(alignment: Alignment.centerLeft, child: Container(width: 370.h, margin: EdgeInsets.only(right: 19.h), child: Text("msg_lorem_ipsum_dolor10".tr, maxLines: 4, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium))), SizedBox(height: 19.v), _buildParticipantsRow(context), SizedBox(height: 18.v), _buildChatRow1(context), SizedBox(height: 20.v), _buildChatRow2(context), SizedBox(height: 20.v), _buildChatRow3(context), SizedBox(height: 20.v), _buildChatRow4(context), SizedBox(height: 20.v), _buildChatRow5(context), SizedBox(height: 20.v), _buildChatRow6(context), SizedBox(height: 20.v), _buildChatRow7(context), SizedBox(height: 20.v), _buildChatRow8(context)])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 143.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgBackButton, margin: EdgeInsets.only(left: 20.h, bottom: 88.v), onTap: () {onTapBackButton(context);}), centerTitle: true, title: AppbarTitleCircleimageOne(imagePath: ImageConstant.imgEllipse2331120x120)); } 
/// Section Widget
Widget _buildParticipantsRow(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_participants".tr, style: CustomTextStyles.titleMediumBluegray900SemiBold), Padding(padding: EdgeInsets.only(bottom: 2.v), child: CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(4.h), decoration: IconButtonStyleHelper.outlineOnPrimaryContainerTL12, child: CustomImageView(imagePath: ImageConstant.imgSearchBlueGray900)))]); } 
/// Section Widget
Widget _buildChat(BuildContext context) { return CustomOutlinedButton(width: 94.h, text: "lbl_chat2".tr, margin: EdgeInsets.symmetric(vertical: 4.v), onPressed: () {onTapChat(context);}); } 
/// Section Widget
Widget _buildChatRow1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgEllipse86940x40, height: 40.adaptSize, width: 40.adaptSize, radius: BorderRadius.circular(20.h)), Padding(padding: EdgeInsets.only(left: 12.h, top: 11.v, bottom: 7.v), child: Text("lbl_jessy_29".tr, style: CustomTextStyles.bodyMediumBlack90002)), Spacer(), _buildChat(context)]); } 
/// Section Widget
Widget _buildChat1(BuildContext context) { return CustomOutlinedButton(width: 94.h, text: "lbl_chat2".tr, margin: EdgeInsets.symmetric(vertical: 4.v)); } 
/// Section Widget
Widget _buildChatRow2(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgEllipse280, height: 40.adaptSize, width: 40.adaptSize, radius: BorderRadius.circular(20.h)), Padding(padding: EdgeInsets.only(left: 12.h, top: 9.v, bottom: 9.v), child: Text("lbl_achsah".tr, style: CustomTextStyles.bodyMediumBlack90002)), Spacer(), _buildChat1(context)]); } 
/// Section Widget
Widget _buildChat2(BuildContext context) { return CustomOutlinedButton(width: 94.h, text: "lbl_chat2".tr, margin: EdgeInsets.symmetric(vertical: 4.v)); } 
/// Section Widget
Widget _buildChatRow3(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgEllipse28040x40, height: 40.adaptSize, width: 40.adaptSize, radius: BorderRadius.circular(20.h)), Padding(padding: EdgeInsets.only(left: 12.h, top: 9.v, bottom: 9.v), child: Text("lbl_aadam_gabriel".tr, style: CustomTextStyles.bodyMediumBlack90002)), Spacer(), _buildChat2(context)]); } 
/// Section Widget
Widget _buildChat3(BuildContext context) { return CustomOutlinedButton(width: 94.h, text: "lbl_chat2".tr, margin: EdgeInsets.only(top: 3.v, bottom: 5.v)); } 
/// Section Widget
Widget _buildChatRow4(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 4.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgEllipse2801, height: 40.adaptSize, width: 40.adaptSize, radius: BorderRadius.circular(20.h)), Padding(padding: EdgeInsets.only(left: 12.h, top: 9.v, bottom: 9.v), child: Text("lbl_jordan_grace".tr, style: CustomTextStyles.bodyMediumBlack90002)), Spacer(), _buildChat3(context)])); } 
/// Section Widget
Widget _buildChat4(BuildContext context) { return CustomOutlinedButton(width: 94.h, text: "lbl_chat2".tr, margin: EdgeInsets.symmetric(vertical: 4.v)); } 
/// Section Widget
Widget _buildChatRow5(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgEllipse28040x40, height: 40.adaptSize, width: 40.adaptSize, radius: BorderRadius.circular(20.h)), Padding(padding: EdgeInsets.only(left: 12.h, top: 9.v, bottom: 9.v), child: Text("lbl_aadam_gabriel".tr, style: CustomTextStyles.bodyMediumBlack90002)), Spacer(), _buildChat4(context)]); } 
/// Section Widget
Widget _buildChat5(BuildContext context) { return CustomOutlinedButton(width: 94.h, text: "lbl_chat2".tr, margin: EdgeInsets.symmetric(vertical: 4.v)); } 
/// Section Widget
Widget _buildChatRow6(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgEllipse280, height: 40.adaptSize, width: 40.adaptSize, radius: BorderRadius.circular(20.h)), Padding(padding: EdgeInsets.only(left: 12.h, top: 9.v, bottom: 9.v), child: Text("lbl_achsah".tr, style: CustomTextStyles.bodyMediumBlack90002)), Spacer(), _buildChat5(context)]); } 
/// Section Widget
Widget _buildChat6(BuildContext context) { return CustomOutlinedButton(width: 94.h, text: "lbl_chat2".tr, margin: EdgeInsets.only(top: 3.v, bottom: 5.v)); } 
/// Section Widget
Widget _buildChatRow7(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgEllipse2801, height: 40.adaptSize, width: 40.adaptSize, radius: BorderRadius.circular(20.h)), Padding(padding: EdgeInsets.only(left: 12.h, bottom: 18.v), child: Text("lbl_jordan_grace".tr, style: CustomTextStyles.bodyMediumBlack90002)), Spacer(), _buildChat6(context)]); } 
/// Section Widget
Widget _buildChat7(BuildContext context) { return CustomOutlinedButton(width: 94.h, text: "lbl_chat2".tr, margin: EdgeInsets.only(top: 4.v)); } 
/// Section Widget
Widget _buildChatRow8(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgEllipse28040x40, height: 40.adaptSize, width: 40.adaptSize, radius: BorderRadius.circular(20.h)), Padding(padding: EdgeInsets.only(left: 12.h, top: 16.v), child: Text("lbl_aadam_gabriel".tr, style: CustomTextStyles.bodyMediumBlack90002)), Spacer(), _buildChat7(context)]); } 
/// Navigates to the chatOneScreen when the action is triggered.
onTapBackButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.chatOneScreen, ); } 
/// Navigates to the chatTwoScreen when the action is triggered.
onTapChat(BuildContext context) { NavigatorService.pushNamed(AppRoutes.chatTwoScreen, ); } 
 }
