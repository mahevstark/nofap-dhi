import 'models/sign_up_model.dart';import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'package:nofapp/widgets/custom_icon_button.dart';import 'package:nofapp/widgets/custom_text_form_field.dart';import 'provider/sign_up_provider.dart';class SignUpScreen extends StatefulWidget {const SignUpScreen({Key? key}) : super(key: key);

@override SignUpScreenState createState() =>  SignUpScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SignUpProvider(), child: SignUpScreen()); } 
 }
class SignUpScreenState extends State<SignUpScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 23.v), child: Column(children: [Container(height: 120.adaptSize, width: 120.adaptSize, decoration: AppDecoration.primary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder11), child: CustomImageView(imagePath: ImageConstant.imgImage130, height: 120.adaptSize, width: 120.adaptSize, alignment: Alignment.center)), SizedBox(height: 19.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_welcome_back".tr, style: CustomTextStyles.titleLargeBluegray900_1)), SizedBox(height: 12.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_sign_up2".tr, style: CustomTextStyles.titleLargePrimary)), SizedBox(height: 22.v), _buildPhoneNumber1(context), SizedBox(height: 21.v), _buildPassword1(context), SizedBox(height: 20.v), _buildConfirmpassword1(context), SizedBox(height: 79.v), _buildSignUp(context), SizedBox(height: 30.v), GestureDetector(onTap: () {onTapTxtAlreadyhavean(context);}, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_already_have_an2".tr, style: CustomTextStyles.bodyLargeBluegray900), TextSpan(text: " "), TextSpan(text: "lbl_sign_in".tr.toUpperCase(), style: CustomTextStyles.bodyLargePrimary.copyWith(decoration: TextDecoration.underline))]), textAlign: TextAlign.left)), SizedBox(height: 26.v), Text("lbl_or".tr, style: CustomTextStyles.headlineSmallLatoBlack90002), SizedBox(height: 29.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 40.adaptSize, width: 40.adaptSize, padding: EdgeInsets.all(4.h), decoration: IconButtonStyleHelper.outlineBlack, child: CustomImageView(imagePath: ImageConstant.imgIcBaselineApple)), Padding(padding: EdgeInsets.only(left: 50.h), child: CustomIconButton(height: 40.adaptSize, width: 40.adaptSize, padding: EdgeInsets.all(4.h), decoration: IconButtonStyleHelper.outlineBlack, child: CustomImageView(imagePath: ImageConstant.imgGroup47)))]), SizedBox(height: 5.v)])))); } 
/// Section Widget
Widget _buildPhoneNumber(BuildContext context) { return Selector<SignUpProvider, TextEditingController?>(selector: (context, provider) => provider.phoneNumberController, builder: (context, phoneNumberController, child) {return CustomTextFormField(controller: phoneNumberController, hintText: "lbl_44_898907690".tr, hintStyle: theme.textTheme.bodyMedium!);}); } 
/// Section Widget
Widget _buildPhoneNumber1(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_phone_number".tr, style: theme.textTheme.titleMedium), SizedBox(height: 7.v), _buildPhoneNumber(context)]); } 
/// Section Widget
Widget _buildPassword(BuildContext context) { return Selector<SignUpProvider, TextEditingController?>(selector: (context, provider) => provider.passwordController, builder: (context, passwordController, child) {return CustomTextFormField(controller: passwordController, obscureText: true);}); } 
/// Section Widget
Widget _buildPassword1(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_password".tr, style: theme.textTheme.titleMedium), SizedBox(height: 7.v), _buildPassword(context)]); } 
/// Section Widget
Widget _buildConfirmpassword(BuildContext context) { return Selector<SignUpProvider, TextEditingController?>(selector: (context, provider) => provider.confirmpasswordController, builder: (context, confirmpasswordController, child) {return CustomTextFormField(controller: confirmpasswordController, textInputAction: TextInputAction.done, obscureText: true);}); } 
/// Section Widget
Widget _buildConfirmpassword1(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_confirm_password".tr, style: theme.textTheme.titleMedium), SizedBox(height: 8.v), _buildConfirmpassword(context)]); } 
/// Section Widget
Widget _buildSignUp(BuildContext context) { return CustomElevatedButton(text: "lbl_sign_up2".tr, onPressed: () {onTapSignUp(context);}); } 
/// Navigates to the profileCreationScreen when the action is triggered.
onTapSignUp(BuildContext context) { NavigatorService.pushNamed(AppRoutes.profileCreationScreen, ); } 
/// Navigates to the signInScreen when the action is triggered.
onTapTxtAlreadyhavean(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signInScreen, ); } 
 }
