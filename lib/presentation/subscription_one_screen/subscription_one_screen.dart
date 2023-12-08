import '../subscription_one_screen/widgets/subscriptionlist_item_widget.dart';import 'models/subscription_one_model.dart';import 'models/subscriptionlist_item_model.dart';import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'provider/subscription_one_provider.dart';import 'package:nofapp/presentation/subscription_three_dialog/subscription_three_dialog.dart';class SubscriptionOneScreen extends StatefulWidget {const SubscriptionOneScreen({Key? key}) : super(key: key);

@override SubscriptionOneScreenState createState() =>  SubscriptionOneScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SubscriptionOneProvider(), child: SubscriptionOneScreen()); } 
 }
class SubscriptionOneScreenState extends State<SubscriptionOneScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v), child: Column(children: [CustomElevatedButton(height: 33.v, width: 189.h, text: "lbl_subscription".tr, leftIcon: Container(margin: EdgeInsets.only(right: 16.h), child: CustomImageView(imagePath: ImageConstant.imgBackButton, height: 32.adaptSize, width: 32.adaptSize)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: CustomTextStyles.titleLargeBluegray900_1, onPressed: () {onTapSubscription(context);}, alignment: Alignment.centerLeft), SizedBox(height: 28.v), CustomImageView(imagePath: ImageConstant.imgSubscriberCuate, height: 294.v, width: 280.h), SizedBox(height: 39.v), Text("msg_lorem_ipsum_dolor2".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 15.v), SizedBox(width: 269.h, child: Text("msg_lorem_ipsum_dolor".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyLarge_1.copyWith(height: 1.50))), SizedBox(height: 26.v), _buildSubscriptionList(context)])), bottomNavigationBar: _buildSubscribeButton(context))); } 
/// Section Widget
Widget _buildSubscriptionList(BuildContext context) { return SizedBox(height: 149.v, child: Consumer<SubscriptionOneProvider>(builder: (context, provider, child) {return ListView.separated(padding: EdgeInsets.symmetric(horizontal: 23.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 30.h);}, itemCount: provider.subscriptionOneModelObj.subscriptionlistItemList.length, itemBuilder: (context, index) {SubscriptionlistItemModel model = provider.subscriptionOneModelObj.subscriptionlistItemList[index]; return SubscriptionlistItemWidget(model, onTapFrame: () {onTapFrame(context);});});})); } 
/// Section Widget
Widget _buildSubscribeButton(BuildContext context) { return CustomElevatedButton(text: "lbl_subscribe_now".tr, margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 48.v), onPressed: () {onTapSubscribeButton(context);}); } 
/// Navigates to the subscriptionFourScreen when the action is triggered.
onTapFrame(BuildContext context) { NavigatorService.pushNamed(AppRoutes.subscriptionFourScreen); } 
/// Navigates to the profileCreationScreen when the action is triggered.
onTapSubscription(BuildContext context) { NavigatorService.pushNamed(AppRoutes.profileCreationScreen, ); } 

/// Displays a dialog with the [SubscriptionThreeDialog] content.
onTapSubscribeButton(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: SubscriptionThreeDialog.builder(context),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 
 }
