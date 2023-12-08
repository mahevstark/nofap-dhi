import 'models/help_center_tab_container_model.dart';import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/help_center_page/help_center_page.dart';import 'package:nofapp/widgets/custom_elevated_button.dart';import 'provider/help_center_tab_container_provider.dart';class HelpCenterTabContainerScreen extends StatefulWidget {const HelpCenterTabContainerScreen({Key? key}) : super(key: key);

@override HelpCenterTabContainerScreenState createState() =>  HelpCenterTabContainerScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => HelpCenterTabContainerProvider(), child: HelpCenterTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class HelpCenterTabContainerScreenState extends State<HelpCenterTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 24.v), CustomElevatedButton(height: 34.v, width: 180.h, text: "lbl_help_center".tr, margin: EdgeInsets.only(left: 20.h), leftIcon: Container(margin: EdgeInsets.only(right: 16.h), child: CustomImageView(imagePath: ImageConstant.imgBackButton, height: 32.adaptSize, width: 32.adaptSize)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: CustomTextStyles.titleLargeBluegray900_1, onPressed: () {onTapHelpCenter(context);}, alignment: Alignment.centerLeft), SizedBox(height: 25.v), Container(height: 41.v, width: 341.h, margin: EdgeInsets.only(left: 20.h), child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: theme.colorScheme.primary, labelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w400), unselectedLabelColor: appTheme.gray700, unselectedLabelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w400), indicatorColor: theme.colorScheme.primary, tabs: [Tab(child: Text("lbl_faq".tr)), Tab(child: Text("lbl_contact_us".tr))])), SizedBox(height: 760.v, child: TabBarView(controller: tabviewController, children: [HelpCenterPage.builder(context), HelpCenterPage.builder(context)]))])))); } 
/// Navigates to the settingsScreen when the action is triggered.
onTapHelpCenter(BuildContext context) { NavigatorService.pushNamed(AppRoutes.settingsScreen, ); } 
 }
