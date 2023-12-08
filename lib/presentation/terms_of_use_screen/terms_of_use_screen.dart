import 'models/terms_of_use_model.dart';import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'provider/terms_of_use_provider.dart';class TermsOfUseScreen extends StatefulWidget {const TermsOfUseScreen({Key? key}) : super(key: key);

@override TermsOfUseScreenState createState() =>  TermsOfUseScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => TermsOfUseProvider(), child: TermsOfUseScreen()); } 
 }
class TermsOfUseScreenState extends State<TermsOfUseScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildTermsOfUseStack(context), SizedBox(height: 26.v), Container(width: 386.h, margin: EdgeInsets.only(left: 20.h, right: 23.h), child: Text("msg_lorem_ipsum_dolor11".tr, maxLines: 24, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyLargeMontserratBlack90002.copyWith(height: 1.50))), SizedBox(height: 5.v)])))); } 
/// Section Widget
Widget _buildTermsOfUseStack(BuildContext context) { return SizedBox(height: 112.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgVector2, height: 112.v, width: 430.h, alignment: Alignment.center), Align(alignment: Alignment.topCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 22.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup147), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 20.v), CustomElevatedButton(height: 33.v, width: 195.h, text: "lbl_terms_of_use2".tr, leftIcon: Container(margin: EdgeInsets.only(right: 16.h), child: CustomImageView(imagePath: ImageConstant.imgBackButton, height: 32.adaptSize, width: 32.adaptSize)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: theme.textTheme.titleLarge!, onPressed: () {onTapTermsOfUse(context);})])))])); } 
/// Navigates to the settingsScreen when the action is triggered.
onTapTermsOfUse(BuildContext context) { NavigatorService.pushNamed(AppRoutes.settingsScreen, ); } 
 }
