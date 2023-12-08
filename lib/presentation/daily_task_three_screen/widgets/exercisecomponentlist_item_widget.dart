import '../models/exercisecomponentlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';

// ignore: must_be_immutable
class ExercisecomponentlistItemWidget extends StatelessWidget {
  ExercisecomponentlistItemWidget(
    this.exercisecomponentlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ExercisecomponentlistItemModel exercisecomponentlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineGray9002601.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  exercisecomponentlistItemModelObj.exerciseText!,
                  style: CustomTextStyles.titleMediumBlack90001,
                ),
                SizedBox(height: 8.v),
                Text(
                  exercisecomponentlistItemModelObj.skipText!,
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTickSquareBlueGray900,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 15.v,
              bottom: 16.v,
            ),
          ),
        ],
      ),
    );
  }
}
