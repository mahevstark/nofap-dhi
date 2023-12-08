import 'models/chat_one_model.dart';import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/app_bar/appbar_leading_image.dart';import 'package:nofapp/widgets/app_bar/appbar_subtitle_two.dart';import 'package:nofapp/widgets/app_bar/appbar_title_circleimage.dart';import 'package:nofapp/widgets/app_bar/appbar_trailing_iconbutton_two.dart';import 'package:nofapp/widgets/app_bar/custom_app_bar.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'package:nofapp/widgets/custom_icon_button.dart';import 'package:nofapp/widgets/custom_text_form_field.dart';import 'provider/chat_one_provider.dart';class ChatOneScreen extends StatefulWidget {const ChatOneScreen({Key? key}) : super(key: key);

@override ChatOneScreenState createState() =>  ChatOneScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ChatOneProvider(), child: ChatOneScreen()); } 
 }
class ChatOneScreenState extends State<ChatOneScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [_buildDateDivider(context), SizedBox(height: 18.v), _buildFrameSixtyOne(context, userName: "msg_john_what_s_up".tr, timeLabel: "lbl_12_01".tr), SizedBox(height: 20.v), _buildFrameSixty(context, timeLabel: "lbl_12_01".tr, messageText: "msg_good_i_finally".tr), SizedBox(height: 20.v), _buildFrameSixtyOne(context, userName: "msg_sarah_what_s_up".tr, timeLabel: "lbl_12_01".tr), SizedBox(height: 20.v), Align(alignment: Alignment.centerRight, child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 10.v, bottom: 12.v), child: Text("lbl_12_01".tr, style: theme.textTheme.bodyMedium)), _buildNiceButton(context)])), SizedBox(height: 20.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgImage5, height: 24.adaptSize, width: 24.adaptSize, radius: BorderRadius.circular(12.h), margin: EdgeInsets.symmetric(vertical: 22.v)), _buildFrameFiftyFive1(context), Padding(padding: EdgeInsets.only(left: 8.h, top: 22.v, bottom: 24.v), child: Text("lbl_12_01".tr, style: theme.textTheme.bodyMedium))]), SizedBox(height: 20.v), _buildFrameSixty(context, timeLabel: "lbl_12_01".tr, messageText: "msg_good_i_finally".tr), SizedBox(height: 25.v), _buildDateDivider1(context), SizedBox(height: 18.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgImage424x24, height: 24.adaptSize, width: 24.adaptSize, radius: BorderRadius.circular(12.h), margin: EdgeInsets.symmetric(vertical: 22.v)), _buildFrameFiftyNine(context), Padding(padding: EdgeInsets.only(left: 8.h, top: 22.v, bottom: 24.v), child: Text("lbl_12_01".tr, style: theme.textTheme.bodyMedium))]), SizedBox(height: 3.v)])), bottomNavigationBar: _buildMessage1(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgBackButton, margin: EdgeInsets.only(left: 20.h, top: 12.v, bottom: 12.v)), title: Padding(padding: EdgeInsets.only(left: 12.h), child: Row(children: [AppbarTitleCircleimage(imagePath: ImageConstant.imgEllipse23311), AppbarSubtitleTwo(text: "lbl_group_name".tr, margin: EdgeInsets.only(left: 10.h, top: 15.v, bottom: 10.v))])), actions: [AppbarTrailingIconbuttonTwo(imagePath: ImageConstant.imgSearchBlueGray900, margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v), onTap: () {onTapSearch(context);})]); } 
/// Section Widget
Widget _buildDateDivider(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 8.v), child: SizedBox(width: 165.h, child: Divider())), Text("lbl_may_29".tr, style: CustomTextStyles.bodySmallGray50001), Padding(padding: EdgeInsets.symmetric(vertical: 8.v), child: SizedBox(width: 166.h, child: Divider()))]); } 
/// Section Widget
Widget _buildNiceButton(BuildContext context) { return CustomElevatedButton(height: 44.v, width: 71.h, text: "lbl_nice".tr, margin: EdgeInsets.only(left: 10.h), buttonStyle: CustomButtonStyles.fillPrimaryTL10, buttonTextStyle: CustomTextStyles.bodyLargeGray100); } 
/// Section Widget
Widget _buildFrameFiftyFive1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 8.h), child: Selector<ChatOneProvider, TextEditingController?>(selector: (context, provider) => provider.frameFiftyFiveController, builder: (context, frameFiftyFiveController, child) {return CustomTextFormField(width: 151.h, controller: frameFiftyFiveController, hintText: "msg_sarah_hey_all_is".tr, borderDecoration: TextFormFieldStyleHelper.fillGray, filled: true, fillColor: appTheme.gray100);})); } 
/// Section Widget
Widget _buildDateDivider1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 8.v), child: SizedBox(width: 168.h, child: Divider())), Text("lbl_today".tr, style: CustomTextStyles.bodySmallGray50001), Padding(padding: EdgeInsets.symmetric(vertical: 8.v), child: SizedBox(width: 169.h, child: Divider()))]); } 
/// Section Widget
Widget _buildFrameFiftyNine(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 8.h), child: Selector<ChatOneProvider, TextEditingController?>(selector: (context, provider) => provider.frameFiftyNineController, builder: (context, frameFiftyNineController, child) {return CustomTextFormField(width: 193.h, controller: frameFiftyNineController, hintText: "msg_sarah_hey_guys_all".tr, borderDecoration: TextFormFieldStyleHelper.fillGray, filled: true, fillColor: appTheme.gray100);})); } 
/// Section Widget
Widget _buildMessage(BuildContext context) { return Expanded(child: Selector<ChatOneProvider, TextEditingController?>(selector: (context, provider) => provider.messageController, builder: (context, messageController, child) {return CustomTextFormField(controller: messageController, hintText: "lbl_type_a_message".tr, textInputAction: TextInputAction.done, contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v), borderDecoration: TextFormFieldStyleHelper.outlineLightBlueA, filled: true, fillColor: theme.colorScheme.onErrorContainer.withOpacity(1));})); } 
/// Section Widget
Widget _buildMessage1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 10.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildMessage(context), Padding(padding: EdgeInsets.only(left: 9.h, top: 5.v, bottom: 5.v), child: CustomIconButton(height: 50.adaptSize, width: 50.adaptSize, padding: EdgeInsets.all(13.h), decoration: IconButtonStyleHelper.outlineLightBlueA, child: CustomImageView(imagePath: ImageConstant.imgGroup48095863)))])); } 
/// Common widget
Widget _buildFrameSixtyOne(BuildContext context, {required String userName, required String timeLabel, }) { return Row(children: [CustomImageView(imagePath: ImageConstant.imgRectangle18, height: 24.adaptSize, width: 24.adaptSize, radius: BorderRadius.circular(12.h), margin: EdgeInsets.symmetric(vertical: 22.v)), Container(margin: EdgeInsets.only(left: 8.h), padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 8.v), decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.customBorderTL10), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), RichText(text: TextSpan(children: [TextSpan(text: "lbl_sarah".tr, style: CustomTextStyles.bodyMediumPrimary), TextSpan(text: "msg_what_s_up_dude2".tr, style: CustomTextStyles.bodyLargeBlack90002)]), textAlign: TextAlign.left)])), Padding(padding: EdgeInsets.only(left: 8.h, top: 22.v, bottom: 24.v), child: Text(timeLabel, style: theme.textTheme.bodyMedium!.copyWith(color: appTheme.gray700)))]); } 
/// Common widget
Widget _buildFrameSixty(BuildContext context, {required String timeLabel, required String messageText, }) { return Row(mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 34.v, bottom: 36.v), child: Text(timeLabel, style: theme.textTheme.bodyMedium!.copyWith(color: appTheme.gray700))), Container(margin: EdgeInsets.only(left: 10.h), padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 9.v), decoration: AppDecoration.primary.copyWith(borderRadius: BorderRadiusStyle.customBorderTL101), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), SizedBox(width: 207.h, child: Text(messageText, maxLines: 3, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyLargeGray100.copyWith(color: appTheme.gray100)))]))]); } 
/// Navigates to the chatThreeScreen when the action is triggered.
onTapSearch(BuildContext context) { NavigatorService.pushNamed(AppRoutes.chatThreeScreen, ); } 
 }
