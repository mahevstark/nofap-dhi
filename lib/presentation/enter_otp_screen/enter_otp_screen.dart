import 'models/enter_otp_model.dart';import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'package:nofapp/widgets/custom_pin_code_text_field.dart';import 'provider/enter_otp_provider.dart';class EnterOtpScreen extends StatefulWidget {const EnterOtpScreen({Key? key}) : super(key: key);

@override EnterOtpScreenState createState() =>  EnterOtpScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => EnterOtpProvider(), child: EnterOtpScreen()); } 
 }
class EnterOtpScreenState extends State<EnterOtpScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 22.v), child: Column(children: [CustomElevatedButton(height: 33.v, width: 154.h, text: "lbl_enter_otp".tr, leftIcon: Container(margin: EdgeInsets.only(right: 16.h), child: CustomImageView(imagePath: ImageConstant.imgBackButton, height: 32.adaptSize, width: 32.adaptSize)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: CustomTextStyles.titleLargeBluegray900_1, onPressed: () {onTapEnterOTP(context);}, alignment: Alignment.centerLeft), SizedBox(height: 15.v), Align(alignment: Alignment.centerLeft, child: Text("msg_enter_otp_that_you".tr, style: CustomTextStyles.bodyLargeOnPrimaryContainer_2)), SizedBox(height: 58.v), Padding(padding: EdgeInsets.symmetric(horizontal: 11.h), child: Selector<EnterOtpProvider, TextEditingController?>(selector: (context, provider) => provider.otpController, builder: (context, otpController, child) {return CustomPinCodeTextField(context: context, controller: otpController, onChanged: (value) {otpController?.text = value;});})), SizedBox(height: 80.v), Text("lbl_00_54".tr, style: CustomTextStyles.headlineSmallBluegray900), SizedBox(height: 10.v), Text("lbl_send_again".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 5.v)])), bottomNavigationBar: _buildVerify(context))); } 
/// Section Widget
Widget _buildVerify(BuildContext context) { return CustomElevatedButton(text: "lbl_verify".tr, margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 48.v), onPressed: () {onTapVerify(context);}); } 
/// Navigates to the forgotPaswordScreen when the action is triggered.
onTapEnterOTP(BuildContext context) { NavigatorService.pushNamed(AppRoutes.forgotPaswordScreen, ); } 
/// Navigates to the enterNewPasswordScreen when the action is triggered.
onTapVerify(BuildContext context) { NavigatorService.pushNamed(AppRoutes.enterNewPasswordScreen, ); } 
 }
