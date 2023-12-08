import '../models/subscriptionlist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';

// ignore: must_be_immutable
class Subscriptionlist1ItemWidget extends StatelessWidget {
  Subscriptionlist1ItemWidget(
    this.subscriptionlist1ItemModelObj, {
    Key? key,
    this.onTapFrame,
  }) : super(
          key: key,
        );

  Subscriptionlist1ItemModel subscriptionlist1ItemModelObj;

  VoidCallback? onTapFrame;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 157.h,
      child: GestureDetector(
        onTap: () {
          onTapFrame!.call();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 35.h,
            vertical: 22.v,
          ),
          decoration: AppDecoration.outlineLightBlue.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder14,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                subscriptionlist1ItemModelObj.freeTrailText!,
                style: CustomTextStyles.titleLargeRegular,
              ),
              Text(
                subscriptionlist1ItemModelObj.threeDaysFreeTrailText!,
                style: CustomTextStyles.labelLargeGray100,
              ),
              SizedBox(height: 13.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_3".tr,
                      style: CustomTextStyles.titleLarge20_1,
                    ),
                    TextSpan(
                      text: "lbl_days".tr,
                      style: CustomTextStyles.labelMediumOnErrorContainer,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 4.v),
            ],
          ),
        ),
      ),
    );
  }
}
