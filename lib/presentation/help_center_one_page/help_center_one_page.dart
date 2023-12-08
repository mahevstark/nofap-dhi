import 'models/help_center_one_model.dart';
import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';
import 'provider/help_center_one_provider.dart';

// ignore_for_file: must_be_immutable
class HelpCenterOnePage extends StatefulWidget {
  const HelpCenterOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  HelpCenterOnePageState createState() => HelpCenterOnePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HelpCenterOneProvider(),
      child: HelpCenterOnePage(),
    );
  }
}

class HelpCenterOnePageState extends State<HelpCenterOnePage>
    with AutomaticKeepAliveClientMixin<HelpCenterOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    right: 281.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLogosWhatsappIcon,
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 7.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "lbl_whatsapp".tr,
                              style: CustomTextStyles.bodyLargeLatoBluegray900,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.v),
                      Padding(
                        padding: EdgeInsets.only(right: 38.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMessage,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 5.v,
                                bottom: 4.v,
                              ),
                              child: Text(
                                "lbl_email".tr,
                                style:
                                    CustomTextStyles.bodyLargeLatoBluegray900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
