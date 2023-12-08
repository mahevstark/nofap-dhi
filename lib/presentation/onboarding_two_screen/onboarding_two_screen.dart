import 'models/onboarding_two_model.dart';import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';import 'provider/onboarding_two_provider.dart';class OnboardingTwoScreen extends StatefulWidget {const OnboardingTwoScreen({Key? key}) : super(key: key);

@override OnboardingTwoScreenState createState() =>  OnboardingTwoScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => OnboardingTwoProvider(), child: OnboardingTwoScreen()); } 
 }
class OnboardingTwoScreenState extends State<OnboardingTwoScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 23.v), child: Column(children: [Container(height: 120.adaptSize, width: 120.adaptSize, decoration: AppDecoration.primary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder11), child: CustomImageView(imagePath: ImageConstant.imgImage130, height: 120.adaptSize, width: 120.adaptSize, alignment: Alignment.center)), SizedBox(height: 61.v), CustomImageView(imagePath: ImageConstant.imgPath251, height: 302.v, width: 410.h), SizedBox(height: 63.v), Text("msg_lorem_ipsum_dolor2".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 15.v), SizedBox(width: 269.h, child: Text("msg_lorem_ipsum_dolor".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyLarge_1.copyWith(height: 1.50))), Spacer(), SizedBox(height: 25.v), _buildNextRow(context)])))); } 
/// Section Widget
Widget _buildNextRow(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 10.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(height: 10.v, margin: EdgeInsets.symmetric(vertical: 19.v), child: AnimatedSmoothIndicator(activeIndex: 0, count: 3, effect: ScrollingDotsEffect(spacing: 5, activeDotColor: theme.colorScheme.primary, dotColor: appTheme.gray30002, dotHeight: 10.v, dotWidth: 10.h))), CustomElevatedButton(width: 185.h, text: "lbl_next".tr, buttonTextStyle: CustomTextStyles.titleLarge20, onPressed: () {onTapNext(context);})])); } 
/// Navigates to the onboardingThreeScreen when the action is triggered.
onTapNext(BuildContext context) { NavigatorService.pushNamed(AppRoutes.onboardingThreeScreen, ); } 
 }
