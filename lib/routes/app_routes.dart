import 'package:flutter/material.dart';
import 'package:nofapp/presentation/splash_screen/splash_screen.dart';
import 'package:nofapp/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:nofapp/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:nofapp/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:nofapp/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:nofapp/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:nofapp/presentation/profile_creation_screen/profile_creation_screen.dart';
import 'package:nofapp/presentation/subscription_four_screen/subscription_four_screen.dart';
import 'package:nofapp/presentation/subscription_one_screen/subscription_one_screen.dart';
import 'package:nofapp/presentation/forgot_pasword_screen/forgot_pasword_screen.dart';
import 'package:nofapp/presentation/enter_otp_screen/enter_otp_screen.dart';
import 'package:nofapp/presentation/enter_new_password_screen/enter_new_password_screen.dart';
import 'package:nofapp/presentation/home_screen/home_screen.dart';
import 'package:nofapp/presentation/daily_task_three_screen/daily_task_three_screen.dart';
import 'package:nofapp/presentation/daily_task_two_screen/daily_task_two_screen.dart';
import 'package:nofapp/presentation/blocker_two_screen/blocker_two_screen.dart';
import 'package:nofapp/presentation/generate_code_three_screen/generate_code_three_screen.dart';
import 'package:nofapp/presentation/blocker_three_screen/blocker_three_screen.dart';
import 'package:nofapp/presentation/blocker_screen/blocker_screen.dart';
import 'package:nofapp/presentation/generate_code_two_screen/generate_code_two_screen.dart';
import 'package:nofapp/presentation/blocker_one_screen/blocker_one_screen.dart';
import 'package:nofapp/presentation/experience_encounter_tips_screen/experience_encounter_tips_screen.dart';
import 'package:nofapp/presentation/notifications_screen/notifications_screen.dart';
import 'package:nofapp/presentation/frame_1686555068_screen/frame_1686555068_screen.dart';
import 'package:nofapp/presentation/community_one_container_screen/community_one_container_screen.dart';
import 'package:nofapp/presentation/community_two_screen/community_two_screen.dart';
import 'package:nofapp/presentation/community_screen/community_screen.dart';
import 'package:nofapp/presentation/comments_screen/comments_screen.dart';
import 'package:nofapp/presentation/chat_screen/chat_screen.dart';
import 'package:nofapp/presentation/chat_two_screen/chat_two_screen.dart';
import 'package:nofapp/presentation/chat_one_screen/chat_one_screen.dart';
import 'package:nofapp/presentation/chat_three_screen/chat_three_screen.dart';
import 'package:nofapp/presentation/group_name_screen/group_name_screen.dart';
import 'package:nofapp/presentation/settings_screen/settings_screen.dart';
import 'package:nofapp/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:nofapp/presentation/profile_screen/profile_screen.dart';
import 'package:nofapp/presentation/change_password_screen/change_password_screen.dart';
import 'package:nofapp/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:nofapp/presentation/about_app_screen/about_app_screen.dart';
import 'package:nofapp/presentation/terms_of_use_screen/terms_of_use_screen.dart';
import 'package:nofapp/presentation/subscription_screen/subscription_screen.dart';
import 'package:nofapp/presentation/subscription_two_screen/subscription_two_screen.dart';
import 'package:nofapp/presentation/delete_account_screen/delete_account_screen.dart';
import 'package:nofapp/presentation/delete_account_one_screen/delete_account_one_screen.dart';
import 'package:nofapp/presentation/help_center_tab_container_screen/help_center_tab_container_screen.dart';
import 'package:nofapp/presentation/help_center_one_tab_container_screen/help_center_one_tab_container_screen.dart';
import 'package:nofapp/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String profileCreationScreen = '/profile_creation_screen';

  static const String subscriptionFourScreen = '/subscription_four_screen';

  static const String subscriptionOneScreen = '/subscription_one_screen';

  static const String forgotPaswordScreen = '/forgot_pasword_screen';

  static const String enterOtpScreen = '/enter_otp_screen';

  static const String enterNewPasswordScreen = '/enter_new_password_screen';

  static const String homeScreen = '/home_screen';

  static const String dailyTaskThreeScreen = '/daily_task_three_screen';

  static const String dailyTaskTwoScreen = '/daily_task_two_screen';

  static const String blockerTwoScreen = '/blocker_two_screen';

  static const String generateCodeThreeScreen = '/generate_code_three_screen';

  static const String blockerThreeScreen = '/blocker_three_screen';

  static const String blockerScreen = '/blocker_screen';

  static const String generateCodeTwoScreen = '/generate_code_two_screen';

  static const String blockerOneScreen = '/blocker_one_screen';

  static const String experienceEncounterTipsScreen =
      '/experience_encounter_tips_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String frame1686555068Screen = '/frame_1686555068_screen';

  static const String communityOnePage = '/community_one_page';

  static const String communityOneContainerScreen =
      '/community_one_container_screen';

  static const String communityTwoScreen = '/community_two_screen';

  static const String communityScreen = '/community_screen';

  static const String commentsScreen = '/comments_screen';

  static const String chatScreen = '/chat_screen';

  static const String chatTwoScreen = '/chat_two_screen';

  static const String chatOneScreen = '/chat_one_screen';

  static const String chatThreeScreen = '/chat_three_screen';

  static const String groupNameScreen = '/group_name_screen';

  static const String settingsScreen = '/settings_screen';

  static const String profileOneScreen = '/profile_one_screen';

  static const String profileScreen = '/profile_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String aboutAppScreen = '/about_app_screen';

  static const String termsOfUseScreen = '/terms_of_use_screen';

  static const String subscriptionScreen = '/subscription_screen';

  static const String subscriptionTwoScreen = '/subscription_two_screen';

  static const String deleteAccountScreen = '/delete_account_screen';

  static const String deleteAccountOneScreen = '/delete_account_one_screen';

  static const String helpCenterPage = '/help_center_page';

  static const String helpCenterTabContainerScreen =
      '/help_center_tab_container_screen';

  static const String helpCenterOnePage = '/help_center_one_page';

  static const String helpCenterOneTabContainerScreen =
      '/help_center_one_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        onboardingOneScreen: OnboardingOneScreen.builder,
        onboardingTwoScreen: OnboardingTwoScreen.builder,
        onboardingThreeScreen: OnboardingThreeScreen.builder,
        signInScreen: SignInScreen.builder,
        signUpScreen: SignUpScreen.builder,
        profileCreationScreen: ProfileCreationScreen.builder,
        subscriptionFourScreen: SubscriptionFourScreen.builder,
        subscriptionOneScreen: SubscriptionOneScreen.builder,
        forgotPaswordScreen: ForgotPaswordScreen.builder,
        enterOtpScreen: EnterOtpScreen.builder,
        enterNewPasswordScreen: EnterNewPasswordScreen.builder,
        homeScreen: HomeScreen.builder,
        dailyTaskThreeScreen: DailyTaskThreeScreen.builder,
        dailyTaskTwoScreen: DailyTaskTwoScreen.builder,
        blockerTwoScreen: BlockerTwoScreen.builder,
        generateCodeThreeScreen: GenerateCodeThreeScreen.builder,
        blockerThreeScreen: BlockerThreeScreen.builder,
        blockerScreen: BlockerScreen.builder,
        generateCodeTwoScreen: GenerateCodeTwoScreen.builder,
        blockerOneScreen: BlockerOneScreen.builder,
        experienceEncounterTipsScreen: ExperienceEncounterTipsScreen.builder,
        notificationsScreen: NotificationsScreen.builder,
        frame1686555068Screen: Frame1686555068Screen.builder,
        communityOneContainerScreen: CommunityOneContainerScreen.builder,
        communityTwoScreen: CommunityTwoScreen.builder,
        communityScreen: CommunityScreen.builder,
        commentsScreen: CommentsScreen.builder,
        chatScreen: ChatScreen.builder,
        chatTwoScreen: ChatTwoScreen.builder,
        chatOneScreen: ChatOneScreen.builder,
        chatThreeScreen: ChatThreeScreen.builder,
        groupNameScreen: GroupNameScreen.builder,
        settingsScreen: SettingsScreen.builder,
        profileOneScreen: ProfileOneScreen.builder,
        profileScreen: ProfileScreen.builder,
        changePasswordScreen: ChangePasswordScreen.builder,
        privacyPolicyScreen: PrivacyPolicyScreen.builder,
        aboutAppScreen: AboutAppScreen.builder,
        termsOfUseScreen: TermsOfUseScreen.builder,
        subscriptionScreen: SubscriptionScreen.builder,
        subscriptionTwoScreen: SubscriptionTwoScreen.builder,
        deleteAccountScreen: DeleteAccountScreen.builder,
        deleteAccountOneScreen: DeleteAccountOneScreen.builder,
        helpCenterTabContainerScreen: HelpCenterTabContainerScreen.builder,
        helpCenterOneTabContainerScreen:
            HelpCenterOneTabContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
