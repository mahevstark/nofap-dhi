import 'models/change_password_model.dart';import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'package:nofapp/widgets/custom_text_form_field.dart';import 'provider/change_password_provider.dart';class ChangePasswordScreen extends StatefulWidget {const ChangePasswordScreen({Key? key}) : super(key: key);

@override ChangePasswordScreenState createState() =>  ChangePasswordScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ChangePasswordProvider(), child: ChangePasswordScreen()); } 
 }
class ChangePasswordScreenState extends State<ChangePasswordScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [_buildImageStack(context), SizedBox(height: 24.v), _buildCurrentPasswordColumn(context), SizedBox(height: 20.v), _buildNewPasswordColumn(context), SizedBox(height: 19.v), _buildTwentyOne(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildSaveChangesButton(context))); } 
/// Section Widget
Widget _buildChangePasswordButton(BuildContext context) { return CustomElevatedButton(height: 34.v, width: 251.h, text: "lbl_change_password2".tr, leftIcon: Container(margin: EdgeInsets.only(right: 16.h), child: CustomImageView(imagePath: ImageConstant.imgBackButton, height: 32.adaptSize, width: 32.adaptSize)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: theme.textTheme.titleLarge!, onPressed: () {onTapChangePasswordButton(context);}); } 
/// Section Widget
Widget _buildImageStack(BuildContext context) { return SizedBox(height: 112.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgVector2, height: 112.v, width: 430.h, alignment: Alignment.center), Align(alignment: Alignment.topCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 24.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup147), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 16.v), _buildChangePasswordButton(context)])))])); } 
/// Section Widget
Widget _buildCurrentPasswordEditText(BuildContext context) { return Selector<ChangePasswordProvider, TextEditingController?>(selector: (context, provider) => provider.currentPasswordEditTextController, builder: (context, currentPasswordEditTextController, child) {return CustomTextFormField(controller: currentPasswordEditTextController, obscureText: true);}); } 
/// Section Widget
Widget _buildCurrentPasswordColumn(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_current_password".tr, style: theme.textTheme.titleMedium), SizedBox(height: 7.v), _buildCurrentPasswordEditText(context)])); } 
/// Section Widget
Widget _buildNewPasswordEditText(BuildContext context) { return Selector<ChangePasswordProvider, TextEditingController?>(selector: (context, provider) => provider.newPasswordEditTextController, builder: (context, newPasswordEditTextController, child) {return CustomTextFormField(controller: newPasswordEditTextController, obscureText: true);}); } 
/// Section Widget
Widget _buildNewPasswordColumn(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_new_password".tr, style: theme.textTheme.titleMedium), SizedBox(height: 7.v), _buildNewPasswordEditText(context)])); } 
/// Section Widget
Widget _buildConfirmPasswordEditText(BuildContext context) { return Selector<ChangePasswordProvider, TextEditingController?>(selector: (context, provider) => provider.confirmPasswordEditTextController, builder: (context, confirmPasswordEditTextController, child) {return CustomTextFormField(controller: confirmPasswordEditTextController, textInputAction: TextInputAction.done, obscureText: true);}); } 
/// Section Widget
Widget _buildTwentyOne(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_confirm_password".tr, style: theme.textTheme.titleMedium), SizedBox(height: 8.v), _buildConfirmPasswordEditText(context)])); } 
/// Section Widget
Widget _buildSaveChangesButton(BuildContext context) { return CustomElevatedButton(text: "lbl_save_changes".tr, margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 48.v), onPressed: () {onTapSaveChangesButton(context);}); } 
/// Navigates to the settingsScreen when the action is triggered.
onTapChangePasswordButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.settingsScreen, ); } 
/// Navigates to the settingsScreen when the action is triggered.
onTapSaveChangesButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.settingsScreen, ); } 
 }
