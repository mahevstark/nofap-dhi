import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign IN".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile Creation".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileCreationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Subscription Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.subscriptionFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Subscription One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.subscriptionOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Pasword".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPaswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Enter OTP".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.enterOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Enter New Password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.enterNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Daily Task Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.dailyTaskThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Daily Task Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.dailyTaskTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Blocker Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.blockerTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Generate code Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.generateCodeThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Blocker Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.blockerThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Blocker".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.blockerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Generate code Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.generateCodeTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Blocker One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.blockerOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Experience Encounter & Tips".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.experienceEncounterTipsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 1686555068".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.frame1686555068Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Community One - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.communityOneContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Community Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.communityTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Community".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.communityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Comments".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.commentsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "chat Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "chat One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "chat Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Group Name".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.groupNameScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Change Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changePasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Privacy Policy".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.privacyPolicyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "About App".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.aboutAppScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Terms of Use".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.termsOfUseScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Subscription".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.subscriptionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Subscription Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.subscriptionTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Delete Account".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.deleteAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Delete Account One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.deleteAccountOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Help Center - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.helpCenterTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Help Center One - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.helpCenterOneTabContainerScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
