import 'controller/shop_details_controller.dart';import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/core/utils/validation_functions.dart';import 'package:ecommerce_seller_app/presentation/profile_page/profile_page.dart';import 'package:ecommerce_seller_app/presentation/search_package_page/search_package_page.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';import 'package:ecommerce_seller_app/widgets/custom_bottom_bar.dart';import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';import 'package:ecommerce_seller_app/widgets/custom_icon_button.dart';import 'package:ecommerce_seller_app/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ShopDetailsScreen extends GetWidget<ShopDetailsController> {ShopDetailsScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 20.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 5.v), child: Column(children: [SizedBox(height: 107.v, width: 110.h, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle4391, height: 99.adaptSize, width: 99.adaptSize, radius: BorderRadius.circular(8.h), alignment: Alignment.topLeft), CustomIconButton(height: 30.adaptSize, width: 30.adaptSize, padding: EdgeInsets.all(7.h), decoration: IconButtonStyleHelper.fillPrimaryTL15, alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgMynauiEditWhiteA700))])), SizedBox(height: 25.v), _buildShopDetails1(), SizedBox(height: 21.v), _buildName(), SizedBox(height: 17.v), _buildAddress(), SizedBox(height: 11.v), _buildTinNumber(), SizedBox(height: 7.v), _buildBinNumber(), SizedBox(height: 30.v), CustomElevatedButton(text: "msg_saved_successfully".tr, onPressed: () {onTapSavedSuccessfully();})]))))]))), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 66.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowDownPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 7.v, bottom: 7.v), onTap: () {onTapArrowDown();}), centerTitle: true, title: AppbarTitle(text: "lbl_abc_com2".tr)); } 
/// Section Widget
Widget _buildShopDetails1() { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildAdminDetails(adminDetailsText: "lbl_shop_details".tr), Padding(padding: EdgeInsets.only(left: 25.h), child: _buildAdminDetails(adminDetailsText: "lbl_admin_details".tr, onTapAdminDetails: () {onTapTxtAdminDetails();})), Spacer(), _buildAdminDetails(adminDetailsText: "lbl_security".tr, onTapAdminDetails: () {onTapTxtSecurity();})]); } 
/// Section Widget
Widget _buildName() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_shop_name".tr, style: theme.textTheme.titleSmall), SizedBox(height: 5.v), CustomTextFormField(controller: controller.nameController, hintText: "lbl_enter_shop_name".tr, hintStyle: CustomTextStyles.bodyMediumGray400, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;})]); } 
/// Section Widget
Widget _buildAddress() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_shop_address".tr, style: theme.textTheme.titleSmall), SizedBox(height: 5.v), CustomTextFormField(controller: controller.addressController, hintText: "msg_enter_shop_address".tr, hintStyle: CustomTextStyles.bodyMediumGray400)]); } 
/// Section Widget
Widget _buildTinNumber() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_tin_number".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), CustomTextFormField(controller: controller.enterTinNumberController, hintText: "msg_enter_tin_number".tr, hintStyle: CustomTextStyles.bodyMediumGray400, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;})]); } 
/// Section Widget
Widget _buildBinNumber() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_bin_number".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), CustomTextFormField(controller: controller.enterTinNumberController1, hintText: "msg_enter_bin_number".tr, hintStyle: CustomTextStyles.bodyMediumGray400, textInputAction: TextInputAction.done, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;})]); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
/// Common widget
Widget _buildAdminDetails({required String adminDetailsText, Function? onTapAdminDetails, }) { return Column(children: [GestureDetector(onTap: () {onTapAdminDetails!.call();}), Text(adminDetailsText, style: CustomTextStyles.bodySmallOnPrimaryContainer.copyWith(color: theme.colorScheme.onPrimaryContainer)), SizedBox(height: 9.v), SizedBox(width: 90.h, child: Divider(color: appTheme.gray30001))]); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Add11: return AppRoutes.searchPackagePage; case BottomBarEnum.Add2: return "/"; case BottomBarEnum.Checklist2: return "/"; case BottomBarEnum.Search: return "/"; case BottomBarEnum.Framebluegray4000220x20: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.searchPackagePage: return SearchPackagePage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
/// Navigates to the homeSettingsScreen when the action is triggered.
onTapArrowDown() { Get.toNamed(AppRoutes.homeSettingsScreen, ); } 
/// Navigates to the shopDetailsOneTabContainerScreen when the action is triggered.
onTapTxtAdminDetails() { Get.toNamed(AppRoutes.shopDetailsOneTabContainerScreen, ); } 
/// Navigates to the shopDetailsTwoTabContainerScreen when the action is triggered.
onTapTxtSecurity() { Get.toNamed(AppRoutes.shopDetailsTwoTabContainerScreen, ); } 
/// Navigates to the homeSettingsScreen when the action is triggered.
onTapSavedSuccessfully() { Get.toNamed(AppRoutes.homeSettingsScreen, ); } 
 }
