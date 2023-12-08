import 'models/profile_creation_model.dart';import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'package:nofapp/widgets/custom_text_form_field.dart';import 'provider/profile_creation_provider.dart';class ProfileCreationScreen extends StatefulWidget {const ProfileCreationScreen({Key? key}) : super(key: key);

@override ProfileCreationScreenState createState() =>  ProfileCreationScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ProfileCreationProvider(), child: ProfileCreationScreen()); } 
 }
class ProfileCreationScreenState extends State<ProfileCreationScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 21.v), child: Column(children: [CustomElevatedButton(height: 34.v, width: 220.h, text: "msg_profile_creation".tr, leftIcon: Container(margin: EdgeInsets.only(right: 16.h), child: CustomImageView(imagePath: ImageConstant.imgBackButton, height: 32.adaptSize, width: 32.adaptSize)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: CustomTextStyles.titleLargeBluegray900_1, onPressed: () {onTapProfileCreation(context);}, alignment: Alignment.centerLeft), SizedBox(height: 46.v), SizedBox(height: 120.adaptSize, width: 120.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgImage128, height: 120.adaptSize, width: 120.adaptSize, radius: BorderRadius.circular(60.h), alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgGroup53, height: 32.adaptSize, width: 32.adaptSize, alignment: Alignment.bottomRight, margin: EdgeInsets.only(right: 5.h, bottom: 2.v))])), SizedBox(height: 60.v), _buildProfileCreationFields(context), SizedBox(height: 19.v), _buildProfileCreationDateOfBirth(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildContinue(context))); } 
/// Section Widget
Widget _buildProfileCreationFields(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_name".tr, style: theme.textTheme.titleMedium), SizedBox(height: 7.v), Selector<ProfileCreationProvider, TextEditingController?>(selector: (context, provider) => provider.nameController, builder: (context, nameController, child) {return CustomTextFormField(controller: nameController, hintText: "lbl_john_doe".tr, hintStyle: theme.textTheme.bodyMedium!, textInputAction: TextInputAction.done);})]); } 
/// Section Widget
Widget _buildProfileCreationDateOfBirth(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_date_of_birth".tr, style: theme.textTheme.titleMedium), SizedBox(height: 8.v), Container(width: 390.h, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 11.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder22), child: Text("lbl_01_12_1998".tr, style: theme.textTheme.bodyMedium))]); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 48.v), onPressed: () {onTapContinue(context);}); } 
/// Navigates to the signUpScreen when the action is triggered.
onTapProfileCreation(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signUpScreen, ); } 
/// Navigates to the subscriptionFourScreen when the action is triggered.
onTapContinue(BuildContext context) { NavigatorService.pushNamed(AppRoutes.subscriptionFourScreen, ); } 
 }
