import 'models/blocker_model.dart';import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'package:nofapp/widgets/custom_text_form_field.dart';import 'provider/blocker_provider.dart';import 'package:nofapp/presentation/daily_task_dialog/daily_task_dialog.dart';class BlockerScreen extends StatefulWidget {const BlockerScreen({Key? key}) : super(key: key);

@override BlockerScreenState createState() =>  BlockerScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => BlockerProvider(), child: BlockerScreen()); } 
 }
class BlockerScreenState extends State<BlockerScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [_buildStackImageAndButton(context), SizedBox(height: 24.v), Align(alignment: Alignment.centerLeft, child: Container(width: 367.h, margin: EdgeInsets.only(left: 20.h, right: 42.h), child: Text("msg_lorem_ipsum_dolor6".tr, maxLines: 3, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium))), SizedBox(height: 19.v), _buildColumnTextAndEditText(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildButtonBlock(context))); } 
/// Section Widget
Widget _buildStackImageAndButton(BuildContext context) { return SizedBox(height: 112.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgVector2, height: 112.v, width: 430.h, alignment: Alignment.center), Align(alignment: Alignment.topCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 21.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup147), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 21.v), CustomElevatedButton(height: 34.v, width: 205.h, text: "lbl_block_website".tr, leftIcon: Container(margin: EdgeInsets.only(right: 16.h), child: CustomImageView(imagePath: ImageConstant.imgBackButton, height: 32.adaptSize, width: 32.adaptSize)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: theme.textTheme.titleLarge!, onPressed: () {onTapBlockWebsite(context);})])))])); } 
/// Section Widget
Widget _buildColumnTextAndEditText(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_add_website_link".tr, style: theme.textTheme.titleMedium), SizedBox(height: 8.v), Selector<BlockerProvider, TextEditingController?>(selector: (context, provider) => provider.weburlController, builder: (context, weburlController, child) {return CustomTextFormField(controller: weburlController, hintText: "lbl_www_qwe_com".tr, hintStyle: theme.textTheme.bodyMedium!, textInputAction: TextInputAction.done);})])); } 
/// Section Widget
Widget _buildButtonBlock(BuildContext context) { return CustomElevatedButton(text: "lbl_block".tr, margin: EdgeInsets.only(left: 21.h, right: 19.h, bottom: 48.v), onPressed: () {onTapButtonBlock(context);}); } 
/// Navigates to the blockerTwoScreen when the action is triggered.
onTapBlockWebsite(BuildContext context) { NavigatorService.pushNamed(AppRoutes.blockerTwoScreen, ); } 

/// Displays a dialog with the [DailyTaskDialog] content.
onTapButtonBlock(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: DailyTaskDialog.builder(context),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 
 }
