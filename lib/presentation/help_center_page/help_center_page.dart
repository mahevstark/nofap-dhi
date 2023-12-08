import 'models/help_center_model.dart';
import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';
import 'package:nofapp/widgets/custom_drop_down.dart';
import 'provider/help_center_provider.dart';

// ignore_for_file: must_be_immutable
class HelpCenterPage extends StatefulWidget {
  const HelpCenterPage({Key? key})
      : super(
          key: key,
        );

  @override
  HelpCenterPageState createState() => HelpCenterPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HelpCenterProvider(),
      child: HelpCenterPage(),
    );
  }
}

class HelpCenterPageState extends State<HelpCenterPage>
    with AutomaticKeepAliveClientMixin<HelpCenterPage> {
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
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  children: [
                    _buildLineSixtyEightStack(context),
                    SizedBox(height: 19.v),
                    Selector<HelpCenterProvider, HelpCenterModel?>(
                      selector: (
                        context,
                        provider,
                      ) =>
                          provider.helpCenterModelObj,
                      builder: (context, helpCenterModelObj, child) {
                        return CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 16.v, 18.h, 15.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdown,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                            ),
                          ),
                          hintText: "msg_lorem_ipsum_is_simply".tr,
                          items: helpCenterModelObj?.dropdownItemList1 ?? [],
                          onChanged: (value) {
                            context
                                .read<HelpCenterProvider>()
                                .onSelected1(value);
                          },
                        );
                      },
                    ),
                    SizedBox(height: 18.v),
                    Selector<HelpCenterProvider, HelpCenterModel?>(
                      selector: (
                        context,
                        provider,
                      ) =>
                          provider.helpCenterModelObj,
                      builder: (context, helpCenterModelObj, child) {
                        return CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 16.v, 18.h, 15.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdown,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                            ),
                          ),
                          hintText: "msg_lorem_ipsum_is_simply".tr,
                          items: helpCenterModelObj?.dropdownItemList2 ?? [],
                          onChanged: (value) {
                            context
                                .read<HelpCenterProvider>()
                                .onSelected2(value);
                          },
                        );
                      },
                    ),
                    SizedBox(height: 18.v),
                    Selector<HelpCenterProvider, HelpCenterModel?>(
                      selector: (
                        context,
                        provider,
                      ) =>
                          provider.helpCenterModelObj,
                      builder: (context, helpCenterModelObj, child) {
                        return CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 16.v, 18.h, 15.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdown,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                            ),
                          ),
                          hintText: "msg_lorem_ipsum_is_simply".tr,
                          items: helpCenterModelObj?.dropdownItemList3 ?? [],
                          onChanged: (value) {
                            context
                                .read<HelpCenterProvider>()
                                .onSelected3(value);
                          },
                        );
                      },
                    ),
                    SizedBox(height: 18.v),
                    Selector<HelpCenterProvider, HelpCenterModel?>(
                      selector: (
                        context,
                        provider,
                      ) =>
                          provider.helpCenterModelObj,
                      builder: (context, helpCenterModelObj, child) {
                        return CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 16.v, 18.h, 15.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdown,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                            ),
                          ),
                          hintText: "msg_lorem_ipsum_is_simply".tr,
                          items: helpCenterModelObj?.dropdownItemList4 ?? [],
                          onChanged: (value) {
                            context
                                .read<HelpCenterProvider>()
                                .onSelected4(value);
                          },
                        );
                      },
                    ),
                    SizedBox(height: 18.v),
                    Selector<HelpCenterProvider, HelpCenterModel?>(
                      selector: (
                        context,
                        provider,
                      ) =>
                          provider.helpCenterModelObj,
                      builder: (context, helpCenterModelObj, child) {
                        return CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 16.v, 18.h, 15.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdown,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                            ),
                          ),
                          hintText: "msg_lorem_ipsum_is_simply".tr,
                          items: helpCenterModelObj?.dropdownItemList5 ?? [],
                          onChanged: (value) {
                            context
                                .read<HelpCenterProvider>()
                                .onSelected5(value);
                          },
                        );
                      },
                    ),
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
  Widget _buildLineSixtyEightStack(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: theme.colorScheme.onErrorContainer.withOpacity(1),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.gray30001,
          width: 1.h,
        ),
        borderRadius: BorderRadiusStyle.circleBorder30,
      ),
      child: Container(
        height: 190.v,
        width: 389.h,
        padding: EdgeInsets.symmetric(
          horizontal: 17.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.outlineGray30001.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder30,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 37.v),
                child: SizedBox(
                  width: 349.h,
                  child: Divider(
                    color: appTheme.gray300,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Selector<HelpCenterProvider, HelpCenterModel?>(
                    selector: (
                      context,
                      provider,
                    ) =>
                        provider.helpCenterModelObj,
                    builder: (context, helpCenterModelObj, child) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.only(left: 30.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowdown,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                        ),
                        hintText: "msg_lorem_ipsum_is_simply".tr,
                        items: helpCenterModelObj?.dropdownItemList ?? [],
                        onChanged: (value) {
                          context.read<HelpCenterProvider>().onSelected(value);
                        },
                      );
                    },
                  ),
                  SizedBox(height: 24.v),
                  Container(
                    width: 346.h,
                    margin: EdgeInsets.only(right: 6.h),
                    child: Text(
                      "msg_lorem_ipsum_is_simply2".tr,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumBluegray90002,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
