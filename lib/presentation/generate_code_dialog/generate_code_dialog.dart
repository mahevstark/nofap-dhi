import 'models/generate_code_model.dart';
import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';
import 'provider/generate_code_provider.dart';

// ignore_for_file: must_be_immutable
class GenerateCodeDialog extends StatefulWidget {
  const GenerateCodeDialog({Key? key})
      : super(
          key: key,
        );

  @override
  GenerateCodeDialogState createState() => GenerateCodeDialogState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GenerateCodeProvider(),
      child: GenerateCodeDialog(),
    );
  }
}

class GenerateCodeDialogState extends State<GenerateCodeDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 334.h,
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 36.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 58.h),
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.fillOnError.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder80,
            ),
            child: Container(
              padding: EdgeInsets.all(10.h),
              decoration: AppDecoration.fillOnError1.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder70,
              ),
              child: Container(
                height: 120.adaptSize,
                width: 120.adaptSize,
                padding: EdgeInsets.all(30.h),
                decoration: AppDecoration.primary.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder60,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgMaskGroup,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
          SizedBox(height: 42.v),
          Text(
            "lbl_code_generated".tr,
            style: CustomTextStyles.titleLargePrimary_1,
          ),
          SizedBox(height: 24.v),
          SizedBox(
            width: 276.h,
            child: Text(
              "msg_lorem_ipsum_dolor4".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
