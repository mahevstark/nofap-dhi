import '../notifications_screen/widgets/notificationslist_item_widget.dart';
import 'models/notifications_model.dart';
import 'models/notificationslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:nofapp/core/app_export.dart';
import 'package:nofapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:nofapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:nofapp/widgets/app_bar/custom_app_bar.dart';
import 'provider/notifications_provider.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationsScreenState createState() => NotificationsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotificationsProvider(),
      child: NotificationsScreen(),
    );
  }
}

class NotificationsScreenState extends State<NotificationsScreen> {
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
          width: double.maxFinite,
          child: Column(
            children: [
              _buildVectorTwoStack(context),
              SizedBox(height: 24.v),
              _buildNotificationsList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVectorTwoStack(BuildContext context) {
    return SizedBox(
      height: 112.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector2,
            height: 112.v,
            width: 430.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 21.v),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup147,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 21.v),
                  CustomAppBar(
                    height: 34.v,
                    leadingWidth: 53.h,
                    leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgBackButton,
                      margin: EdgeInsets.only(
                        left: 21.h,
                        top: 2.v,
                      ),
                    ),
                    title: AppbarSubtitle(
                      text: "lbl_notifications".tr,
                      margin: EdgeInsets.only(left: 16.h),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationsList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Consumer<NotificationsProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 16.v,
                );
              },
              itemCount: provider
                  .notificationsModelObj.notificationslistItemList.length,
              itemBuilder: (context, index) {
                NotificationslistItemModel model = provider
                    .notificationsModelObj.notificationslistItemList[index];
                return NotificationslistItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
