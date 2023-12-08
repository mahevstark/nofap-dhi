import 'models/subscription_four_model.dart';import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'provider/subscription_four_provider.dart';class SubscriptionFourScreen extends StatefulWidget {const SubscriptionFourScreen({Key? key}) : super(key: key);

@override SubscriptionFourScreenState createState() =>  SubscriptionFourScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SubscriptionFourProvider(), child: SubscriptionFourScreen()); } 
 }
class SubscriptionFourScreenState extends State<SubscriptionFourScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v), child: Column(children: [CustomElevatedButton(height: 33.v, width: 189.h, text: "lbl_subscription".tr, leftIcon: Container(margin: EdgeInsets.only(right: 16.h), child: CustomImageView(imagePath: ImageConstant.imgBackButton, height: 32.adaptSize, width: 32.adaptSize)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: CustomTextStyles.titleLargeBluegray900_1, onPressed: () {onTapSubscription(context);}, alignment: Alignment.centerLeft), SizedBox(height: 28.v), CustomImageView(imagePath: ImageConstant.imgSubscriberCuate, height: 294.v, width: 280.h), SizedBox(height: 39.v), Text("msg_lorem_ipsum_dolor2".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 15.v), SizedBox(width: 269.h, child: Text("msg_lorem_ipsum_dolor".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyLarge_1.copyWith(height: 1.50))), SizedBox(height: 26.v), _buildSubscriptionOptions(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildSubscribeNow(context))); } 
/// Section Widget
Widget _buildSubscriptionOptions(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 23.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(right: 15.h), child: _buildFrame(context, monthlyText: "lbl_free_trail".tr, loremIpsumText: "msg_3_days_free_trail".tr, priceText: "lbl_3_days".tr, onTapFrame: () {onTapFrame(context);})), Padding(padding: EdgeInsets.only(left: 15.h), child: _buildFrame(context, monthlyText: "lbl_monthly".tr, loremIpsumText: "msg_lorem_ipsum_dolor3".tr, priceText: "lbl_4_99_per_month".tr))])); } 
/// Section Widget
Widget _buildSubscribeNow(BuildContext context) { return CustomElevatedButton(text: "lbl_subscribe_now".tr, margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 48.v), buttonStyle: CustomButtonStyles.fillGray); } 
/// Common widget
Widget _buildFrame(BuildContext context, {required String monthlyText, required String loremIpsumText, required String priceText, Function? onTapFrame, }) { return GestureDetector(onTap: () {onTapFrame!.call();}, child: Expanded(child: SizedBox(width: double.maxFinite, child: Container(padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 23.v), decoration: AppDecoration.outlineGray700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder14), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Text(monthlyText, style: CustomTextStyles.titleLargeBlack90002.copyWith(color: appTheme.black90002)), Text(loremIpsumText, style: theme.textTheme.labelLarge!.copyWith(color: appTheme.gray700)), SizedBox(height: 13.v), RichText(text: TextSpan(children: [TextSpan(text: "lbl_4_99".tr, style: CustomTextStyles.titleLargePrimary20), TextSpan(text: "lbl_per_month".tr, style: theme.textTheme.labelMedium)]), textAlign: TextAlign.left), SizedBox(height: 3.v)]))))); } 
/// Navigates to the profileCreationScreen when the action is triggered.
onTapSubscription(BuildContext context) { NavigatorService.pushNamed(AppRoutes.profileCreationScreen, ); } 
/// Navigates to the subscriptionOneScreen when the action is triggered.
onTapFrame(BuildContext context) { NavigatorService.pushNamed(AppRoutes.subscriptionOneScreen, ); } 
 }
