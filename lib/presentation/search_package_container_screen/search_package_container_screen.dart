import 'controller/search_package_container_controller.dart';import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/profile_page/profile_page.dart';import 'package:ecommerce_seller_app/presentation/search_package_page/search_package_page.dart';import 'package:ecommerce_seller_app/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';class SearchPackageContainerScreen extends GetWidget<SearchPackageContainerController> {const SearchPackageContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Navigator(key: Get.nestedKey(1), initialRoute: AppRoutes.searchPackagePage, onGenerateRoute: (routeSetting) => GetPageRoute(page: () => getCurrentPage(routeSetting.name!), transition: Transition.noTransition)), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Add11: return AppRoutes.searchPackagePage; case BottomBarEnum.Add2: return "/"; case BottomBarEnum.Checklist2: return "/"; case BottomBarEnum.Search: return "/"; case BottomBarEnum.Framebluegray4000220x20: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.searchPackagePage: return SearchPackagePage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
 }
