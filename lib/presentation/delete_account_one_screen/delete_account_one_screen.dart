import 'models/delete_account_one_model.dart';import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'package:nofapp/widgets/custom_pin_code_text_field.dart';import 'provider/delete_account_one_provider.dart';class DeleteAccountOneScreen extends StatefulWidget {const DeleteAccountOneScreen({Key? key}) : super(key: key);

@override DeleteAccountOneScreenState createState() =>  DeleteAccountOneScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => DeleteAccountOneProvider(), child: DeleteAccountOneScreen()); } 
 }
class DeleteAccountOneScreenState extends State<DeleteAccountOneScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 22.v), child: Column(children: [CustomElevatedButton(height: 33.v, width: 154.h, text: "lbl_enter_otp".tr, leftIcon: Container(margin: EdgeInsets.only(right: 16.h), child: CustomImageView(imagePath: ImageConstant.imgBackButton, height: 32.adaptSize, width: 32.adaptSize)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: CustomTextStyles.titleLargeBluegray900_1, onPressed: () {onTapEnterOTP(context);}, alignment: Alignment.centerLeft), Spacer(flex: 27), Padding(padding: EdgeInsets.symmetric(horizontal: 11.h), child: Selector<DeleteAccountOneProvider, TextEditingController?>(selector: (context, provider) => provider.otpController, builder: (context, otpController, child) {return CustomPinCodeTextField(context: context, controller: otpController, onChanged: (value) {otpController?.text = value;});})), SizedBox(height: 62.v), Text("lbl_00_54".tr, style: CustomTextStyles.headlineSmallBluegray900), SizedBox(height: 10.v), Text("lbl_send_again".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 77.v), CustomElevatedButton(text: "lbl_delete_account".tr, onPressed: () {onTapDeleteAccount(context);}), Spacer(flex: 72)])))); } 
/// Navigates to the deleteAccountScreen when the action is triggered.
onTapEnterOTP(BuildContext context) { NavigatorService.pushNamed(AppRoutes.deleteAccountScreen, ); } 
/// Navigates to the splashScreen when the action is triggered.
onTapDeleteAccount(BuildContext context) { NavigatorService.pushNamed(AppRoutes.splashScreen, ); } 
 }
