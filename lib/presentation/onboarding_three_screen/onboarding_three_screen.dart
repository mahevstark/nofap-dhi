import 'models/onboarding_three_model.dart';import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';import 'provider/onboarding_three_provider.dart';class OnboardingThreeScreen extends StatefulWidget {const OnboardingThreeScreen({Key? key}) : super(key: key);

@override OnboardingThreeScreenState createState() =>  OnboardingThreeScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => OnboardingThreeProvider(), child: OnboardingThreeScreen()); } 
 }
class OnboardingThreeScreenState extends State<OnboardingThreeScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 23.v), child: Column(children: [Container(height: 120.adaptSize, width: 120.adaptSize, decoration: AppDecoration.primary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder11), child: CustomImageView(imagePath: ImageConstant.imgImage130, height: 120.adaptSize, width: 120.adaptSize, alignment: Alignment.center)), SizedBox(height: 62.v), CustomImageView(imagePath: ImageConstant.imgPath261, height: 301.v, width: 300.h), SizedBox(height: 63.v), Text("msg_lorem_ipsum_dolor2".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 15.v), SizedBox(width: 269.h, child: Text("msg_lorem_ipsum_dolor".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyLarge_1.copyWith(height: 1.50))), Spacer(), SizedBox(height: 25.v), _buildPagerIndicatorRow(context)])))); } 
/// Section Widget
Widget _buildPagerIndicatorRow(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(height: 10.v, margin: EdgeInsets.symmetric(vertical: 19.v), child: AnimatedSmoothIndicator(activeIndex: 0, count: 3, effect: ScrollingDotsEffect(spacing: 5, activeDotColor: theme.colorScheme.primary, dotColor: appTheme.gray30002, dotHeight: 10.v, dotWidth: 10.h))), CustomElevatedButton(width: 185.h, text: "lbl_next".tr, buttonTextStyle: CustomTextStyles.titleLarge20, onPressed: () {onTapNext(context);})]); } 
/// Navigates to the signUpScreen when the action is triggered.
onTapNext(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signUpScreen, ); } 
 }
