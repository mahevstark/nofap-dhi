import 'models/chat_model.dart';import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/community_one_page/community_one_page.dart';import 'package:nofapp/widgets/app_bar/appbar_subtitle.dart';import 'package:nofapp/widgets/app_bar/appbar_trailing_iconbutton_one.dart';import 'package:nofapp/widgets/app_bar/custom_app_bar.dart';import 'package:nofapp/widgets/custom_bottom_app_bar.dart';import 'provider/chat_provider.dart';class ChatScreen extends StatefulWidget {const ChatScreen({Key? key}) : super(key: key);

@override ChatScreenState createState() =>  ChatScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ChatProvider(), child: ChatScreen()); } 
 }

// ignore_for_file: must_be_immutable
class ChatScreenState extends State<ChatScreen> {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildStack(context), SizedBox(height: 24.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Column(children: [_buildFrame(context, phase: "lbl_tim_david".tr, widget: "lbl_2".tr, youHiGoodMorning: "msg_hi_good_morning".tr, time: "lbl_13_29".tr, onTapFrame: () {onTapFrame(context);}), SizedBox(height: 20.v), _buildFrame(context, phase: "lbl_phase_1_group".tr, widget: "lbl_2".tr, youHiGoodMorning: "msg_you_hi_good_morning".tr, time: "lbl_13_29".tr, onTapFrame: () {onTapFrameRow(context);}), SizedBox(height: 20.v), _buildFrame(context, phase: "lbl_phase_1_group".tr, widget: "lbl_2".tr, youHiGoodMorning: "msg_you_hi_good_morning".tr, time: "lbl_13_29".tr, onTapFrame: () {onTapFrame1(context);}), SizedBox(height: 20.v), _buildFrame1(context, userName: "lbl_tom_latham".tr, greetingMessage: "msg_hi_good_morning".tr, timeLabel: "lbl_13_29".tr), SizedBox(height: 20.v), _buildFrame1(context, userName: "lbl_kim_sara".tr, greetingMessage: "msg_hi_good_morning".tr, timeLabel: "lbl_13_29".tr), SizedBox(height: 20.v), _buildFrame1(context, userName: "lbl_jenny_wilona".tr, greetingMessage: "msg_hi_good_morning".tr, timeLabel: "lbl_13_29".tr), SizedBox(height: 20.v), _buildFrame1(context, userName: "lbl_jenny_wilona".tr, greetingMessage: "msg_hi_good_morning".tr, timeLabel: "lbl_13_29".tr), SizedBox(height: 20.v), _buildFrame1(context, userName: "lbl_jenny_wilona".tr, greetingMessage: "msg_hi_good_morning".tr, timeLabel: "lbl_13_29".tr), SizedBox(height: 20.v), _buildFrame1(context, userName: "lbl_jenny_wilona".tr, greetingMessage: "msg_hi_good_morning".tr, timeLabel: "lbl_13_29".tr), SizedBox(height: 20.v), _buildFrame1(context, userName: "lbl_jenny_wilona".tr, greetingMessage: "msg_hi_good_morning".tr, timeLabel: "lbl_13_29".tr), SizedBox(height: 20.v), _buildFrame1(context, userName: "lbl_jenny_wilona".tr, greetingMessage: "msg_hi_good_morning".tr, timeLabel: "lbl_13_29".tr)]))))])), bottomNavigationBar: _buildBottomAppBar(context), floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked)); } 
/// Section Widget
Widget _buildStack(BuildContext context) { return SizedBox(height: 112.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgVector2, height: 112.v, width: 430.h, alignment: Alignment.center), Align(alignment: Alignment.topCenter, child: Container(padding: EdgeInsets.symmetric(vertical: 22.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup147), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 21.v), CustomAppBar(height: 33.v, title: AppbarSubtitle(text: "lbl_chat".tr, margin: EdgeInsets.only(left: 20.h)), actions: [AppbarTrailingIconbuttonOne(imagePath: ImageConstant.imgSearchBlueGray900, margin: EdgeInsets.symmetric(horizontal: 20.h))])])))])); } 
/// Section Widget
Widget _buildBottomAppBar(BuildContext context) { return CustomBottomAppBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
/// Common widget
Widget _buildFrame(BuildContext context, {required String phase, required String widget, required String youHiGoodMorning, required String time, Function? onTapFrame, }) { return GestureDetector(onTap: () {onTapFrame!.call();}, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgEllipse2330, height: 60.adaptSize, width: 60.adaptSize, radius: BorderRadius.circular(30.h)), Expanded(child: Padding(padding: EdgeInsets.only(left: 16.h, top: 5.v), child: Column(children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(phase, style: CustomTextStyles.titleMediumBluegray90001.copyWith(color: appTheme.blueGray90001)), Container(width: 20.adaptSize, margin: EdgeInsets.only(bottom: 4.v), padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 1.v), decoration: AppDecoration.primary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder11), child: Text(widget, style: CustomTextStyles.labelLargeOnErrorContainer.copyWith(color: theme.colorScheme.onErrorContainer.withOpacity(1))))]), SizedBox(height: 7.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(youHiGoodMorning, style: CustomTextStyles.bodyMediumGray60002.copyWith(color: appTheme.gray60002)), Padding(padding: EdgeInsets.only(top: 3.v), child: Text(time, style: theme.textTheme.bodySmall!.copyWith(color: appTheme.gray60002)))])])))])); } 
/// Common widget
Widget _buildFrame1(BuildContext context, {required String userName, required String greetingMessage, required String timeLabel, }) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgEllipse23301, height: 60.adaptSize, width: 60.adaptSize, radius: BorderRadius.circular(30.h)), Expanded(child: Padding(padding: EdgeInsets.only(left: 16.h, top: 2.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(userName, style: CustomTextStyles.titleMediumBluegray90001.copyWith(color: appTheme.blueGray90001)), SizedBox(height: 10.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(greetingMessage, style: CustomTextStyles.bodyMediumGray60002.copyWith(color: appTheme.gray60002)), Padding(padding: EdgeInsets.only(top: 3.v), child: Text(timeLabel, style: theme.textTheme.bodySmall!.copyWith(color: appTheme.gray60002)))])])))]); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Homegray50002: return AppRoutes.communityOnePage; case BottomBarEnum.Group1686553925chat: return "/"; case BottomBarEnum.Search: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.communityOnePage: return CommunityOnePage.builder(context); default: return DefaultWidget();} } 
/// Navigates to the chatTwoScreen when the action is triggered.
onTapFrame(BuildContext context) { NavigatorService.pushNamed(AppRoutes.chatTwoScreen, ); } 
/// Navigates to the chatOneScreen when the action is triggered.
onTapFrameRow(BuildContext context) { NavigatorService.pushNamed(AppRoutes.chatOneScreen, ); } 
/// Navigates to the chatOneScreen when the action is triggered.
onTapFrame1(BuildContext context) { NavigatorService.pushNamed(AppRoutes.chatOneScreen, ); } 
 }
