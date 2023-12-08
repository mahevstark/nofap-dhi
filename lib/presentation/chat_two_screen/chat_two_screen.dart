import 'models/chat_two_model.dart';
import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';
import 'package:nofapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:nofapp/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:nofapp/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:nofapp/widgets/app_bar/custom_app_bar.dart';
import 'package:nofapp/widgets/custom_elevated_button.dart';
import 'package:nofapp/widgets/custom_icon_button.dart';
import 'package:nofapp/widgets/custom_text_form_field.dart';
import 'provider/chat_two_provider.dart';

class ChatTwoScreen extends StatefulWidget {
  const ChatTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ChatTwoScreenState createState() => ChatTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChatTwoProvider(),
      child: ChatTwoScreen(),
    );
  }
}

class ChatTwoScreenState extends State<ChatTwoScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 16.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDateDivider(context),
              SizedBox(height: 18.v),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.fillGray100.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 4.v),
                        Text(
                          "msg_what_s_up_dude".tr,
                          style: CustomTextStyles.bodyLargeBlack90002_1,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      top: 10.v,
                      bottom: 12.v,
                    ),
                    child: Text(
                      "lbl_12_01".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 34.v,
                        bottom: 36.v,
                      ),
                      child: Text(
                        "lbl_12_01".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 9.v,
                      ),
                      decoration: AppDecoration.primary.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL101,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 1.v),
                          SizedBox(
                            width: 207.h,
                            child: Text(
                              "msg_good_i_finally".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyLargeOnErrorContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.v),
              Row(
                children: [
                  _buildHeyGuysAllIsGoodButton(context),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      top: 10.v,
                      bottom: 12.v,
                    ),
                    child: Text(
                      "lbl_12_01".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10.v,
                          bottom: 12.v,
                        ),
                        child: Text(
                          "lbl_12_01".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      _buildNiceButton(context),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              Row(
                children: [
                  _buildHeyAllIsGoodButton(context),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      top: 10.v,
                      bottom: 12.v,
                    ),
                    child: Text(
                      "lbl_12_01".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 21.v),
              _buildTodayDateDivider(context),
              SizedBox(height: 18.v),
              Row(
                children: [
                  _buildHeyGuysAllIsGoodButton1(context),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      top: 10.v,
                      bottom: 12.v,
                    ),
                    child: Text(
                      "lbl_12_01".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildMessageRow(context),
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
          top: 10.v,
          bottom: 13.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: Row(
          children: [
            AppbarTitleCircleimage(
              imagePath: ImageConstant.imgEllipse233150x50,
              margin: EdgeInsets.only(bottom: 2.v),
            ),
            Container(
              width: 80.h,
              margin: EdgeInsets.only(
                left: 10.h,
                top: 4.v,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_tim_david2".tr,
                      style: CustomTextStyles.titleMediumBluegray900,
                    ),
                    TextSpan(
                      text: "lbl_active".tr,
                      style: CustomTextStyles.bodySmallBluegray900,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingIconbuttonTwo(
          imagePath: ImageConstant.imgSearchBlueGray900,
          margin: EdgeInsets.fromLTRB(20.h, 10.v, 20.h, 13.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDateDivider(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.v),
          child: SizedBox(
            width: 165.h,
            child: Divider(),
          ),
        ),
        Text(
          "lbl_may_29".tr,
          style: CustomTextStyles.bodySmallGray50001,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.v),
          child: SizedBox(
            width: 166.h,
            child: Divider(),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHeyGuysAllIsGoodButton(BuildContext context) {
    return CustomElevatedButton(
      height: 44.v,
      width: 193.h,
      text: "msg_hey_guys_all_is".tr,
      buttonStyle: CustomButtonStyles.fillGrayTL10,
      buttonTextStyle: CustomTextStyles.bodyLargeBlack90002_1,
    );
  }

  /// Section Widget
  Widget _buildNiceButton(BuildContext context) {
    return CustomElevatedButton(
      height: 44.v,
      width: 71.h,
      text: "lbl_nice".tr,
      margin: EdgeInsets.only(left: 10.h),
      buttonStyle: CustomButtonStyles.fillPrimaryTL10,
      buttonTextStyle: CustomTextStyles.bodyLargeOnErrorContainer,
    );
  }

  /// Section Widget
  Widget _buildHeyAllIsGoodButton(BuildContext context) {
    return CustomElevatedButton(
      height: 44.v,
      width: 151.h,
      text: "msg_hey_all_is_good".tr,
      buttonStyle: CustomButtonStyles.fillGrayTL10,
      buttonTextStyle: CustomTextStyles.bodyLargeBlack90002_1,
    );
  }

  /// Section Widget
  Widget _buildTodayDateDivider(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.v),
          child: SizedBox(
            width: 168.h,
            child: Divider(),
          ),
        ),
        Text(
          "lbl_today".tr,
          style: CustomTextStyles.bodySmallGray50001,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.v),
          child: SizedBox(
            width: 169.h,
            child: Divider(),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHeyGuysAllIsGoodButton1(BuildContext context) {
    return CustomElevatedButton(
      height: 44.v,
      width: 193.h,
      text: "msg_hey_guys_all_is".tr,
      buttonStyle: CustomButtonStyles.fillGrayTL10,
      buttonTextStyle: CustomTextStyles.bodyLargeBlack90002_1,
    );
  }

  /// Section Widget
  Widget _buildMessageEditText(BuildContext context) {
    return Expanded(
      child: Selector<ChatTwoProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.messageEditTextController,
        builder: (context, messageEditTextController, child) {
          return CustomTextFormField(
            controller: messageEditTextController,
            hintText: "lbl_type_a_message".tr,
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 19.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineLightBlueA,
            filled: true,
            fillColor: theme.colorScheme.onErrorContainer.withOpacity(1),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 10.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildMessageEditText(context),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 5.v,
              bottom: 5.v,
            ),
            child: CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.outlineLightBlueA,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup48095863,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
