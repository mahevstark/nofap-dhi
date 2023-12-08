import 'models/forgot_pasword_model.dart';import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/core/utils/validation_functions.dart';import 'package:nofapp/widgets/app_bar/appbar_title_button.dart';import 'package:nofapp/widgets/app_bar/custom_app_bar.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'package:nofapp/widgets/custom_text_form_field.dart';import 'provider/forgot_pasword_provider.dart';class ForgotPaswordScreen extends StatefulWidget {const ForgotPaswordScreen({Key? key}) : super(key: key);

@override ForgotPaswordScreenState createState() =>  ForgotPaswordScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ForgotPaswordProvider(), child: ForgotPaswordScreen()); } 
 }

// ignore_for_file: must_be_immutable
class ForgotPaswordScreenState extends State<ForgotPaswordScreen> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 2.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_enter_email_to_recover".tr, style: CustomTextStyles.bodyLargeOnPrimaryContainer_2), SizedBox(height: 20.v), _buildForgotPasswordColumn(context), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildSendOTPButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(title: AppbarTitleButton(margin: EdgeInsets.only(left: 20.h), onTap: () {onTapForgotPassword(context);})); } 
/// Section Widget
Widget _buildForgotPasswordColumn(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_phone_number".tr, style: theme.textTheme.titleMedium), SizedBox(height: 7.v), Selector<ForgotPaswordProvider, TextEditingController?>(selector: (context, provider) => provider.phoneNumberController, builder: (context, phoneNumberController, child) {return CustomTextFormField(controller: phoneNumberController, hintText: "lbl_44_898907690".tr, hintStyle: theme.textTheme.bodyMedium!, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: true);})]); } 
/// Section Widget
Widget _buildSendOTPButton(BuildContext context) { return CustomElevatedButton(text: "lbl_send_otp".tr, margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 48.v), onPressed: () {onTapSendOTPButton(context);}); } 
/// Navigates to the signInScreen when the action is triggered.
onTapForgotPassword(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signInScreen, ); } 
/// Navigates to the enterOtpScreen when the action is triggered.
onTapSendOTPButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.enterOtpScreen, ); } 
 }
