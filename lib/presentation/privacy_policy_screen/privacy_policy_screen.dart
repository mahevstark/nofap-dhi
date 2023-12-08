import 'models/privacy_policy_model.dart';import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'provider/privacy_policy_provider.dart';class PrivacyPolicyScreen extends StatefulWidget {const PrivacyPolicyScreen({Key? key}) : super(key: key);

@override PrivacyPolicyScreenState createState() =>  PrivacyPolicyScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => PrivacyPolicyProvider(), child: PrivacyPolicyScreen()); } 
 }
class PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildPrivacyPolicyStack(context), SizedBox(height: 26.v), Container(width: 386.h, margin: EdgeInsets.only(left: 20.h, right: 23.h), child: Text("msg_lorem_ipsum_dolor11".tr, maxLines: 24, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyLargeMontserratBlack90002.copyWith(height: 1.50))), SizedBox(height: 5.v)])))); } 
/// Section Widget
Widget _buildPrivacyPolicyStack(BuildContext context) { return SizedBox(height: 112.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgVector2, height: 112.v, width: 430.h, alignment: Alignment.center), Align(alignment: Alignment.topCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 24.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup147), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 17.v), CustomElevatedButton(height: 33.v, width: 203.h, text: "lbl_privacy_policy".tr, leftIcon: Container(margin: EdgeInsets.only(right: 16.h), child: CustomImageView(imagePath: ImageConstant.imgBackButton, height: 32.adaptSize, width: 32.adaptSize)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: theme.textTheme.titleLarge!, onPressed: () {onTapPrivacyPolicy(context);})])))])); } 
/// Navigates to the settingsScreen when the action is triggered.
onTapPrivacyPolicy(BuildContext context) { NavigatorService.pushNamed(AppRoutes.settingsScreen, ); } 
 }
