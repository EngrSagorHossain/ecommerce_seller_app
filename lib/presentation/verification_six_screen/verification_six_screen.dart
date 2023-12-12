import 'controller/verification_six_controller.dart';import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/core/utils/validation_functions.dart';import 'package:ecommerce_seller_app/presentation/profile_page/profile_page.dart';import 'package:ecommerce_seller_app/presentation/search_package_page/search_package_page.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';import 'package:ecommerce_seller_app/widgets/custom_bottom_bar.dart';import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';import 'package:ecommerce_seller_app/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class VerificationSixScreen extends GetWidget<VerificationSixController> {VerificationSixScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 76.v), Expanded(child: SingleChildScrollView(child: _buildVerificationColumn()))]))), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 66.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowDownPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 7.v, bottom: 7.v)), centerTitle: true, title: AppbarTitle(text: "msg_email_verification".tr)); } 
/// Section Widget
Widget _buildEmailColumn() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("lbl_email_address2".tr, style: theme.textTheme.titleSmall)), SizedBox(height: 17.v), Padding(padding: EdgeInsets.only(left: 1.h), child: CustomTextFormField(controller: controller.emailController, hintText: "msg_enter_your_email".tr, hintStyle: CustomTextStyles.bodyMediumGray400, textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}))]); } 
/// Section Widget
Widget _buildVerificationColumn() { return Padding(padding: EdgeInsets.only(left: 23.h, right: 23.h, bottom: 5.v), child: Column(children: [_buildEmailColumn(), SizedBox(height: 30.v), CustomElevatedButton(text: "lbl_send_code".tr, onPressed: () {onTapSendCode();})])); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Add11: return AppRoutes.searchPackagePage; case BottomBarEnum.Add2: return "/"; case BottomBarEnum.Checklist2: return "/"; case BottomBarEnum.Search: return "/"; case BottomBarEnum.Framebluegray4000220x20: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.searchPackagePage: return SearchPackagePage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
/// Navigates to the verificationFiveScreen when the action is triggered.
onTapSendCode() { Get.toNamed(AppRoutes.verificationFiveScreen, ); } 
 }
