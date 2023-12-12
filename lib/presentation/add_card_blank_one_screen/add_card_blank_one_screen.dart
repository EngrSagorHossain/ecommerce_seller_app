import 'controller/add_card_blank_one_controller.dart';import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/core/utils/validation_functions.dart';import 'package:ecommerce_seller_app/presentation/profile_page/profile_page.dart';import 'package:ecommerce_seller_app/presentation/search_package_page/search_package_page.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';import 'package:ecommerce_seller_app/widgets/custom_bottom_bar.dart';import 'package:ecommerce_seller_app/widgets/custom_drop_down.dart';import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';import 'package:ecommerce_seller_app/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class AddCardBlankOneScreen extends GetWidget<AddCardBlankOneController> {AddCardBlankOneScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 31.v), Expanded(child: SingleChildScrollView(child: _buildAddCardBlankOne()))]))), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 66.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowDownPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 7.v, bottom: 7.v), onTap: () {onTapArrowDown();}), centerTitle: true, title: AppbarTitle(text: "lbl_add_card".tr)); } 
/// Section Widget
Widget _buildCardHolder() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("msg_card_holder_name".tr, style: CustomTextStyles.bodyLargeBlack90016)), SizedBox(height: 15.v), CustomTextFormField(controller: controller.nameController, hintText: "msg_enter_card_holder".tr, hintStyle: CustomTextStyles.bodyLargeBluegray400, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}, borderDecoration: TextFormFieldStyleHelper.outlineGrayTL10, filled: false)]); } 
/// Section Widget
Widget _buildCardNumber() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("msg_your_card_number".tr, style: CustomTextStyles.bodyLargeBlack90016)), SizedBox(height: 15.v), CustomTextFormField(controller: controller.cardNumberController, hintText: "msg_enter_your_card".tr, hintStyle: CustomTextStyles.bodyLargeBluegray400, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;}, borderDecoration: TextFormFieldStyleHelper.outlineGrayTL10, filled: false)]); } 
/// Section Widget
Widget _buildExpiryDate() { return Expanded(child: Padding(padding: EdgeInsets.only(top: 1.v, right: 7.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("lbl_expiry_date".tr, style: CustomTextStyles.bodyLargeBlack90016)), SizedBox(height: 14.v), SizedBox(width: 156.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomDropDown(width: 71.h, icon: Container(margin: EdgeInsets.fromLTRB(6.h, 18.v, 10.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownBlack900, height: 16.adaptSize, width: 16.adaptSize)), hintText: "lbl_july".tr, items: controller.addCardBlankOneModelObj.value.dropdownItemList!.value, contentPadding: EdgeInsets.only(left: 11.h, top: 15.v, bottom: 15.v), onChanged: (value) {controller.onSelected(value);}), CustomDropDown(width: 70.h, icon: Container(margin: EdgeInsets.fromLTRB(6.h, 18.v, 7.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownBlack900, height: 16.adaptSize, width: 16.adaptSize)), hintText: "lbl_2025".tr, items: controller.addCardBlankOneModelObj.value.dropdownItemList1!.value, contentPadding: EdgeInsets.only(left: 7.h, top: 15.v, bottom: 15.v), onChanged: (value) {controller.onSelected1(value);})]))]))); } 
/// Section Widget
Widget _buildAddCardBlankOne() { return Padding(padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 5.v), child: Column(children: [_buildCardHolder(), SizedBox(height: 20.v), _buildCardNumber(), SizedBox(height: 20.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildExpiryDate(), Expanded(child: Padding(padding: EdgeInsets.only(left: 7.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("lbl_cvv".tr, style: CustomTextStyles.bodyLargeBlack90016)), SizedBox(height: 15.v), CustomTextFormField(width: 156.h, controller: controller.cvvController, hintText: "lbl_cvv_number".tr, hintStyle: CustomTextStyles.bodyLargeBluegray400, textInputAction: TextInputAction.done, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;}, borderDecoration: TextFormFieldStyleHelper.outlineGrayTL10, filled: false)])))]), SizedBox(height: 53.v), CustomElevatedButton(text: "msg_add_to_card_list".tr, buttonStyle: CustomButtonStyles.fillPrimaryTL5, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700)])); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Add11: return AppRoutes.searchPackagePage; case BottomBarEnum.Add2: return "/"; case BottomBarEnum.Checklist2: return "/"; case BottomBarEnum.Search: return "/"; case BottomBarEnum.Framebluegray4000220x20: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.searchPackagePage: return SearchPackagePage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
/// Navigates to the addCardBlankScreen when the action is triggered.
onTapArrowDown() { Get.toNamed(AppRoutes.addCardBlankScreen, ); } 
 }
