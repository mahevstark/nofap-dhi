import 'models/community_one_container_model.dart';import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/community_one_page/community_one_page.dart';import 'package:nofapp/widgets/custom_bottom_app_bar.dart';import 'provider/community_one_container_provider.dart';class CommunityOneContainerScreen extends StatefulWidget {const CommunityOneContainerScreen({Key? key}) : super(key: key);

@override CommunityOneContainerScreenState createState() =>  CommunityOneContainerScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => CommunityOneContainerProvider(), child: CommunityOneContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class CommunityOneContainerScreenState extends State<CommunityOneContainerScreen> {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.communityOnePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomAppBar(context), floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked)); } 
/// Section Widget
Widget _buildBottomAppBar(BuildContext context) { return CustomBottomAppBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Homegray50002: return AppRoutes.communityOnePage; case BottomBarEnum.Group1686553925chat: return "/"; case BottomBarEnum.Search: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.communityOnePage: return CommunityOnePage.builder(context); default: return DefaultWidget();} } 
 }
