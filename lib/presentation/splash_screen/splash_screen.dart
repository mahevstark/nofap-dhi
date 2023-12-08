import 'models/splash_model.dart';import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'provider/splash_provider.dart';class SplashScreen extends StatefulWidget {const SplashScreen({Key? key}) : super(key: key);

@override SplashScreenState createState() =>  SplashScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SplashProvider(), child: SplashScreen()); } 
 }
class SplashScreenState extends State<SplashScreen> {@override void initState() { super.initState();Future.delayed(const Duration(milliseconds: 3000), (){
NavigatorService.popAndPushNamed(AppRoutes.onboardingOneScreen, );}); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 52.h, vertical: 139.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Spacer(flex: 59), Container(height: 150.adaptSize, width: 150.adaptSize, decoration: AppDecoration.primary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder14), child: CustomImageView(imagePath: ImageConstant.imgImage130, height: 150.adaptSize, width: 150.adaptSize, alignment: Alignment.center)), Spacer(flex: 40), Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_welcome_to_nofapp".tr, style: theme.textTheme.headlineMedium), CustomImageView(imagePath: ImageConstant.imgSmile1, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 5.h, top: 5.v, bottom: 12.v))]), SizedBox(height: 17.v), Container(width: 269.h, margin: EdgeInsets.symmetric(horizontal: 28.h), child: Text("msg_lorem_ipsum_dolor".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyLarge_1.copyWith(height: 1.50)))])))); } 
 }
