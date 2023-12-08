import 'models/about_app_model.dart';import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'provider/about_app_provider.dart';class AboutAppScreen extends StatefulWidget {const AboutAppScreen({Key? key}) : super(key: key);

@override AboutAppScreenState createState() =>  AboutAppScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => AboutAppProvider(), child: AboutAppScreen()); } 
 }
class AboutAppScreenState extends State<AboutAppScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildAboutAppStack(context), SizedBox(height: 26.v), Container(width: 386.h, margin: EdgeInsets.only(left: 20.h, right: 23.h), child: Text("msg_lorem_ipsum_dolor11".tr, maxLines: 24, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyLargeMontserratBlack90002.copyWith(height: 1.50))), SizedBox(height: 5.v)])))); } 
/// Section Widget
Widget _buildAboutAppStack(BuildContext context) { return SizedBox(height: 112.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgVector2, height: 112.v, width: 430.h, alignment: Alignment.center), Align(alignment: Alignment.topCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 24.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup147), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 16.v), CustomElevatedButton(height: 34.v, width: 167.h, text: "lbl_about_app".tr, leftIcon: Container(margin: EdgeInsets.only(right: 16.h), child: CustomImageView(imagePath: ImageConstant.imgBackButton, height: 32.adaptSize, width: 32.adaptSize)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: theme.textTheme.titleLarge!, onPressed: () {onTapAboutApp(context);})])))])); } 
/// Navigates to the settingsScreen when the action is triggered.
onTapAboutApp(BuildContext context) { NavigatorService.pushNamed(AppRoutes.settingsScreen, ); } 
 }
