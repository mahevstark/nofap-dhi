import 'models/help_center_one_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';
import 'package:nofapp/presentation/help_center_one_page/help_center_one_page.dart';
import 'package:nofapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:nofapp/widgets/app_bar/appbar_title.dart';
import 'package:nofapp/widgets/app_bar/custom_app_bar.dart';
import 'provider/help_center_one_tab_container_provider.dart';

class HelpCenterOneTabContainerScreen extends StatefulWidget {
  const HelpCenterOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HelpCenterOneTabContainerScreenState createState() =>
      HelpCenterOneTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HelpCenterOneTabContainerProvider(),
      child: HelpCenterOneTabContainerScreen(),
    );
  }
}

class HelpCenterOneTabContainerScreenState
    extends State<HelpCenterOneTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 14.v),
              Container(
                height: 41.v,
                width: 312.h,
                margin: EdgeInsets.only(right: 20.h),
                child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: theme.colorScheme.primary,
                  labelStyle: TextStyle(
                    fontSize: 18.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  unselectedLabelColor: appTheme.gray700,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 18.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  indicatorColor: theme.colorScheme.primary,
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_faq".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_contact_us".tr,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 760.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    HelpCenterOnePage.builder(context),
                    HelpCenterOnePage.builder(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgBackButton,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 11.v,
          bottom: 13.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_help_center".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }
}
