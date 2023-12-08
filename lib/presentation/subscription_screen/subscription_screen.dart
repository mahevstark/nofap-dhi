import '../subscription_screen/widgets/subscriptionlist1_item_widget.dart';import 'models/subscription_model.dart';import 'models/subscriptionlist1_item_model.dart';import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'provider/subscription_provider.dart';class SubscriptionScreen extends StatefulWidget {const SubscriptionScreen({Key? key}) : super(key: key);

@override SubscriptionScreenState createState() =>  SubscriptionScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SubscriptionProvider(), child: SubscriptionScreen()); } 
 }
class SubscriptionScreenState extends State<SubscriptionScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v), child: Column(children: [CustomElevatedButton(height: 33.v, width: 189.h, text: "lbl_subscription".tr, leftIcon: Container(margin: EdgeInsets.only(right: 16.h), child: CustomImageView(imagePath: ImageConstant.imgBackButton, height: 32.adaptSize, width: 32.adaptSize)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: CustomTextStyles.titleLargeBluegray900_1, onPressed: () {onTapSubscription(context);}, alignment: Alignment.centerLeft), SizedBox(height: 28.v), CustomImageView(imagePath: ImageConstant.imgSubscriberCuate, height: 294.v, width: 280.h), SizedBox(height: 39.v), Text("msg_lorem_ipsum_dolor2".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 15.v), SizedBox(width: 269.h, child: Text("msg_lorem_ipsum_dolor".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyLarge_1.copyWith(height: 1.50))), SizedBox(height: 26.v), _buildSubscriptionList(context)])))); } 
/// Section Widget
Widget _buildSubscriptionList(BuildContext context) { return SizedBox(height: 149.v, child: Consumer<SubscriptionProvider>(builder: (context, provider, child) {return ListView.separated(padding: EdgeInsets.symmetric(horizontal: 23.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 30.h);}, itemCount: provider.subscriptionModelObj.subscriptionlist1ItemList.length, itemBuilder: (context, index) {Subscriptionlist1ItemModel model = provider.subscriptionModelObj.subscriptionlist1ItemList[index]; return Subscriptionlist1ItemWidget(model, onTapFrame: () {onTapFrame(context);});});})); } 
/// Navigates to the subscriptionTwoScreen when the action is triggered.
onTapFrame(BuildContext context) { NavigatorService.pushNamed(AppRoutes.subscriptionTwoScreen); } 
/// Navigates to the settingsScreen when the action is triggered.
onTapSubscription(BuildContext context) { NavigatorService.pushNamed(AppRoutes.settingsScreen, ); } 
 }
