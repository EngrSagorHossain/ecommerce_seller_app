import 'controller/shop_details_two_tab_container_controller.dart';import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/profile_page/profile_page.dart';import 'package:ecommerce_seller_app/presentation/search_package_page/search_package_page.dart';import 'package:ecommerce_seller_app/presentation/shop_details_four_page/shop_details_four_page.dart';import 'package:ecommerce_seller_app/presentation/shop_details_two_page/shop_details_two_page.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';import 'package:ecommerce_seller_app/widgets/custom_bottom_bar.dart';import 'package:ecommerce_seller_app/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';class ShopDetailsTwoTabContainerScreen extends GetWidget<ShopDetailsTwoTabContainerController> {const ShopDetailsTwoTabContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 20.v), SizedBox(height: 107.v, width: 110.h, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle4391, height: 99.adaptSize, width: 99.adaptSize, radius: BorderRadius.circular(8.h), alignment: Alignment.topLeft), CustomIconButton(height: 30.adaptSize, width: 30.adaptSize, padding: EdgeInsets.all(7.h), decoration: IconButtonStyleHelper.fillPrimaryTL15, alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgMynauiEditWhiteA700))])), SizedBox(height: 25.v), _buildTabview(), Expanded(child: SizedBox(height: 439.v, child: TabBarView(controller: controller.tabviewController, children: [ShopDetailsTwoPage(), ShopDetailsTwoPage(), ShopDetailsFourPage()])))])), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 66.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowDownPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 7.v, bottom: 7.v), onTap: () {onTapArrowDown();}), centerTitle: true, title: AppbarTitle(text: "lbl_abc_com2".tr)); } 
/// Section Widget
Widget _buildTabview() { return Container(height: 31.v, width: 327.h, child: TabBar(controller: controller.tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.gray80002, labelStyle: TextStyle(fontSize: 12.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w400), unselectedLabelColor: theme.colorScheme.onPrimaryContainer, unselectedLabelStyle: TextStyle(fontSize: 12.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w400), indicatorColor: theme.colorScheme.primary, tabs: [Tab(child: Text("lbl_shop_details".tr)), Tab(child: Text("lbl_admin_details2".tr)), Tab(child: Text("lbl_security".tr))])); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Add11: return AppRoutes.searchPackagePage; case BottomBarEnum.Add2: return "/"; case BottomBarEnum.Checklist2: return "/"; case BottomBarEnum.Search: return "/"; case BottomBarEnum.Framebluegray4000220x20: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.searchPackagePage: return SearchPackagePage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
/// Navigates to the shopDetailsOneTabContainerScreen when the action is triggered.
onTapArrowDown() { Get.toNamed(AppRoutes.shopDetailsOneTabContainerScreen, ); } 
 }