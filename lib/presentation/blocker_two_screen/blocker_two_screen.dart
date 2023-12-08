import 'models/blocker_two_model.dart';import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'package:nofapp/widgets/custom_switch.dart';import 'provider/blocker_two_provider.dart';class BlockerTwoScreen extends StatefulWidget {const BlockerTwoScreen({Key? key}) : super(key: key);

@override BlockerTwoScreenState createState() =>  BlockerTwoScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => BlockerTwoProvider(), child: BlockerTwoScreen()); } 
 }
class BlockerTwoScreenState extends State<BlockerTwoScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildBlockerStack(context), SizedBox(height: 24.v), _buildExperienceEncounterRow(context), SizedBox(height: 12.v), Align(alignment: Alignment.centerLeft, child: Container(width: 367.h, margin: EdgeInsets.only(left: 20.h, right: 42.h), child: Text("msg_lorem_ipsum_dolor6".tr, maxLines: 3, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium))), SizedBox(height: 19.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 20.h), child: Text("lbl_block_list".tr, style: CustomTextStyles.titleMediumBluegray900SemiBold))), SizedBox(height: 72.v), CustomImageView(imagePath: ImageConstant.imgImage326, height: 80.adaptSize, width: 80.adaptSize), SizedBox(height: 15.v), Text("msg_no_website_added".tr, style: CustomTextStyles.bodyMediumGray600), Spacer(flex: 67), CustomElevatedButton(height: 32.v, width: 152.h, text: "lbl_block_website".tr, leftIcon: Container(margin: EdgeInsets.only(right: 7.h), child: CustomImageView(imagePath: ImageConstant.imgPlus, height: 32.adaptSize, width: 32.adaptSize)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: CustomTextStyles.titleMediumPrimary, onPressed: () {onTapBlockWebsite(context);}), Spacer(flex: 32)])))); } 
/// Section Widget
Widget _buildBlockerStack(BuildContext context) { return SizedBox(height: 112.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgVector2, height: 112.v, width: 430.h, alignment: Alignment.center), Align(alignment: Alignment.topCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 22.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup147), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 20.v), CustomElevatedButton(height: 33.v, width: 131.h, text: "lbl_blocker".tr, leftIcon: Container(margin: EdgeInsets.only(right: 16.h), child: CustomImageView(imagePath: ImageConstant.imgBackButton, height: 32.adaptSize, width: 32.adaptSize)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: theme.textTheme.titleLarge!, onPressed: () {onTapBlocker(context);})])))])); } 
/// Section Widget
Widget _buildExperienceEncounterRow(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 20.h), padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v), decoration: AppDecoration.outlineGray9002601.copyWith(borderRadius: BorderRadiusStyle.roundedBorder18), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_site_blockers".tr, style: CustomTextStyles.titleMediumBlack90001), Selector<BlockerTwoProvider, bool?>(selector: (context, provider) => provider.isSelectedSwitch, builder: (context, isSelectedSwitch, child) {return CustomSwitch(margin: EdgeInsets.symmetric(vertical: 2.v), value: isSelectedSwitch, onChange: (value) {context.read<BlockerTwoProvider>().changeSwitchBox(value);});})])); } 
/// Navigates to the homeScreen when the action is triggered.
onTapBlocker(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeScreen, ); } 
/// Navigates to the blockerScreen when the action is triggered.
onTapBlockWebsite(BuildContext context) { NavigatorService.pushNamed(AppRoutes.blockerScreen, ); } 
 }
