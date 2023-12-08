import 'models/enter_new_password_model.dart';import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'package:nofapp/widgets/custom_text_form_field.dart';import 'provider/enter_new_password_provider.dart';class EnterNewPasswordScreen extends StatefulWidget {const EnterNewPasswordScreen({Key? key}) : super(key: key);

@override EnterNewPasswordScreenState createState() =>  EnterNewPasswordScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => EnterNewPasswordProvider(), child: EnterNewPasswordScreen()); } 
 }
class EnterNewPasswordScreenState extends State<EnterNewPasswordScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 22.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildEnterNewPasswordButton(context), SizedBox(height: 15.v), Text("msg_create_confirm".tr, style: CustomTextStyles.bodyLargeOnPrimaryContainer_2), SizedBox(height: 20.v), _buildTwentyOne(context), SizedBox(height: 19.v), _buildTwentyOne1(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildEnterNewPasswordSaveButton(context))); } 
/// Section Widget
Widget _buildEnterNewPasswordButton(BuildContext context) { return CustomElevatedButton(height: 33.v, width: 272.h, text: "msg_enter_new_password".tr, leftIcon: Container(margin: EdgeInsets.only(right: 16.h), child: CustomImageView(imagePath: ImageConstant.imgBackButton, height: 32.adaptSize, width: 32.adaptSize)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: CustomTextStyles.titleLargeBluegray900_1, onPressed: () {onTapEnterNewPasswordButton(context);}); } 
/// Section Widget
Widget _buildTwentyOnePasswordEditText(BuildContext context) { return Selector<EnterNewPasswordProvider, TextEditingController?>(selector: (context, provider) => provider.twentyOnePasswordEditTextController, builder: (context, twentyOnePasswordEditTextController, child) {return CustomTextFormField(controller: twentyOnePasswordEditTextController, obscureText: true);}); } 
/// Section Widget
Widget _buildTwentyOne(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_password".tr, style: theme.textTheme.titleMedium), SizedBox(height: 7.v), _buildTwentyOnePasswordEditText(context)]); } 
/// Section Widget
Widget _buildTwentyOneConfirmPasswordEditText(BuildContext context) { return Selector<EnterNewPasswordProvider, TextEditingController?>(selector: (context, provider) => provider.twentyOneConfirmPasswordEditTextController, builder: (context, twentyOneConfirmPasswordEditTextController, child) {return CustomTextFormField(controller: twentyOneConfirmPasswordEditTextController, textInputAction: TextInputAction.done, obscureText: true);}); } 
/// Section Widget
Widget _buildTwentyOne1(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_confirm_password".tr, style: theme.textTheme.titleMedium), SizedBox(height: 8.v), _buildTwentyOneConfirmPasswordEditText(context)]); } 
/// Section Widget
Widget _buildEnterNewPasswordSaveButton(BuildContext context) { return CustomElevatedButton(text: "lbl_save".tr, margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 48.v), onPressed: () {onTapEnterNewPasswordSaveButton(context);}); } 
/// Navigates to the enterOtpScreen when the action is triggered.
onTapEnterNewPasswordButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.enterOtpScreen, ); } 
/// Navigates to the signInScreen when the action is triggered.
onTapEnterNewPasswordSaveButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signInScreen, ); } 
 }
