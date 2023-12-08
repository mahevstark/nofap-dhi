import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';
import 'package:nofapp/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class AppbarTitleButton extends StatelessWidget {
  AppbarTitleButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          height: 34.v,
          width: 233.h,
          text: "lbl_forgot_password".tr,
          leftIcon: Container(
            margin: EdgeInsets.only(right: 16.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgBackButton,
              height: 32.adaptSize,
              width: 32.adaptSize,
            ),
          ),
          buttonStyle: CustomButtonStyles.none,
          buttonTextStyle: CustomTextStyles.titleLargeBluegray900_1,
        ),
      ),
    );
  }
}
