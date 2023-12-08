import '../models/listuserprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';

// ignore: must_be_immutable
class ListuserprofileItemWidget extends StatelessWidget {
  ListuserprofileItemWidget(
    this.listuserprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListuserprofileItemModel listuserprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 19.v,
      ),
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
                      listuserprofileItemModelObj.username!,
                      style: CustomTextStyles.titleMediumBlack900,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      listuserprofileItemModelObj.timeAgo!,
                      style: CustomTextStyles.bodySmallGray60001,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 18.v),
          Container(
            width: 337.h,
            margin: EdgeInsets.only(right: 12.h),
            child: Text(
              listuserprofileItemModelObj.description!,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
