import '../models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';
import 'package:nofapp/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
    this.onTapButtonText,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  VoidCallback? onTapButtonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder22,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse869,
                height: 48.adaptSize,
                width: 48.adaptSize,
                radius: BorderRadius.circular(
                  24.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userprofilelistItemModelObj.userName!,
                      style: CustomTextStyles.titleMediumBlack900,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      userprofilelistItemModelObj.timeAgo!,
                      style: CustomTextStyles.bodySmallGray60001,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8.v),
          Container(
            width: 337.h,
            margin: EdgeInsets.only(
              left: 7.h,
              right: 19.h,
            ),
            child: Text(
              userprofilelistItemModelObj.description!,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 18.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle148332,
            height: 284.v,
            width: 364.h,
            radius: BorderRadius.circular(
              18.h,
            ),
          ),
          SizedBox(height: 19.v),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder26,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: userprofilelistItemModelObj?.likesImage,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      bottom: 2.v,
                    ),
                    child: Text(
                      userprofilelistItemModelObj.likesCount!,
                      style: CustomTextStyles.titleMediumMontserratBlack900,
                    ),
                  ),
                  CustomElevatedButton(
                    height: 24.v,
                    width: 57.h,
                    text: "lbl_175".tr,
                    margin: EdgeInsets.only(left: 26.h),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgChat,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.none,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumMontserratBlack900,
                    onPressed: () {
                      onTapButtonText!.call();
                    },
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSend,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 26.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
