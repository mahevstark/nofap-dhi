import '../models/notificationslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';
import 'package:nofapp/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class NotificationslistItemWidget extends StatelessWidget {
  NotificationslistItemWidget(
    this.notificationslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationslistItemModel notificationslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillGray20001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIconButton(
            height: 56.adaptSize,
            width: 56.adaptSize,
            padding: EdgeInsets.all(13.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgBellRinging03,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 2.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notificationslistItemModelObj.text1!,
                  style: CustomTextStyles.titleLargeBluegray900Medium,
                ),
                Text(
                  notificationslistItemModelObj.text2!,
                  style: CustomTextStyles.titleSmallLatoGray700,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
