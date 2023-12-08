import 'models/generate_code_two_model.dart';import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:nofapp/core/app_export.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'package:nofapp/widgets/custom_pin_code_text_field.dart';import 'provider/generate_code_two_provider.dart';import 'package:nofapp/presentation/generate_code_one_dialog/generate_code_one_dialog.dart';class GenerateCodeTwoScreen extends StatefulWidget {const GenerateCodeTwoScreen({Key? key}) : super(key: key);

@override GenerateCodeTwoScreenState createState() =>  GenerateCodeTwoScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => GenerateCodeTwoProvider(), child: GenerateCodeTwoScreen()); } 
 }
class GenerateCodeTwoScreenState extends State<GenerateCodeTwoScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [_buildEnterCodeStack(context), SizedBox(height: 24.v), Align(alignment: Alignment.centerLeft, child: Container(width: 367.h, margin: EdgeInsets.only(left: 20.h, right: 42.h), child: Text("msg_lorem_ipsum_dolor6".tr, maxLines: 3, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium))), SizedBox(height: 49.v), Padding(padding: EdgeInsets.symmetric(horizontal: 95.h), child: Selector<GenerateCodeTwoProvider, TextEditingController?>(selector: (context, provider) => provider.otpController, builder: (context, otpController, child) {return CustomPinCodeTextField(context: context, controller: otpController, onChanged: (value) {otpController?.text = value;});})), Spacer(flex: 29), CustomElevatedButton(text: "lbl_done".tr, margin: EdgeInsets.symmetric(horizontal: 20.h), onPressed: () {onTapDone(context);}), Spacer(flex: 70)])))); } 
/// Section Widget
Widget _buildEnterCodeStack(BuildContext context) { return SizedBox(height: 112.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgVector2, height: 112.v, width: 430.h, alignment: Alignment.center), Align(alignment: Alignment.topCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 22.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup147), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 20.v), CustomElevatedButton(height: 33.v, width: 170.h, text: "lbl_enter_code".tr, leftIcon: Container(margin: EdgeInsets.only(right: 16.h), child: CustomImageView(imagePath: ImageConstant.imgBackButton, height: 32.adaptSize, width: 32.adaptSize)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: theme.textTheme.titleLarge!, onPressed: () {onTapEnterCode(context);})])))])); } 
/// Navigates to the blockerThreeScreen when the action is triggered.
onTapEnterCode(BuildContext context) { NavigatorService.pushNamed(AppRoutes.blockerThreeScreen, ); } 

/// Displays a dialog with the [GenerateCodeOneDialog] content.
onTapDone(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: GenerateCodeOneDialog.builder(context),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 
 }
