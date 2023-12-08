import 'models/frame_1686555068_model.dart';
import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';
import 'provider/frame_1686555068_provider.dart';

class Frame1686555068Screen extends StatefulWidget {
  const Frame1686555068Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Frame1686555068ScreenState createState() => Frame1686555068ScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Frame1686555068Provider(),
      child: Frame1686555068Screen(),
    );
  }
}

class Frame1686555068ScreenState extends State<Frame1686555068Screen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 390.h,
          child: Container(
            width: 390.h,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 19.v,
            ),
            decoration: AppDecoration.outlineGray90026.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder22,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_blocker".tr,
                  style: CustomTextStyles.titleMediumBluegray900SemiBold,
                ),
                SizedBox(height: 15.v),
                Container(
                  width: 326.h,
                  margin: EdgeInsets.only(right: 23.h),
                  child: Text(
                    "msg_lorem_ipsum_dolor9".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 29.v),
                Text(
                  "msg_yes_i_ll_come_back".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 15.v),
                Text(
                  "msg_nah_just_kidding".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 19.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
