import 'controller/verification_seven_controller.dart';import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/profile_page/profile_page.dart';import 'package:ecommerce_seller_app/presentation/search_package_page/search_package_page.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';import 'package:ecommerce_seller_app/widgets/custom_bottom_bar.dart';import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';import 'package:ecommerce_seller_app/widgets/custom_icon_button.dart';import 'package:ecommerce_seller_app/widgets/custom_pin_code_text_field.dart';import 'package:flutter/material.dart';class VerificationSevenScreen extends GetWidget<VerificationSevenController> {const VerificationSevenScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 35.v), child: Column(children: [Container(width: 239.h, margin: EdgeInsets.symmetric(horizontal: 43.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_thank_you_for_sign4".tr, style: CustomTextStyles.titleLargeBlack900SemiBold), TextSpan(text: "lbl_abc_com".tr, style: CustomTextStyles.titleLargePrimary)]), textAlign: TextAlign.center)), SizedBox(height: 16.v), SizedBox(width: 189.h, child: Text("msg_please_select_your2".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyLargePrimaryContainer16)), SizedBox(height: 13.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 40.adaptSize, width: 40.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.outlineBlueGray, child: CustomImageView(imagePath: ImageConstant.imgLogosGoogleGmail)), Container(height: 40.adaptSize, width: 40.adaptSize, margin: EdgeInsets.only(left: 30.h), padding: EdgeInsets.all(8.h), decoration: AppDecoration.fillPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(2.h), decoration: IconButtonStyleHelper.fillPrimaryContainer, alignment: Alignment.center, child: CustomImageView(imagePath: ImageConstant.imgCall))), Padding(padding: EdgeInsets.only(left: 30.h), child: CustomIconButton(height: 40.adaptSize, width: 40.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.outlineBlueGray, child: CustomImageView(imagePath: ImageConstant.imgChatBubble1)))]), SizedBox(height: 39.v), SizedBox(width: 180.h, child: Text("msg_enter_the_otp_send".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyMediumPrimaryContainer.copyWith(height: 1.71))), SizedBox(height: 17.v), Padding(padding: EdgeInsets.symmetric(horizontal: 61.h), child: Obx(() => CustomPinCodeTextField(context: Get.context!, controller: controller.otpController.value, onChanged: (value) {}))), SizedBox(height: 36.v), RichText(text: TextSpan(children: [TextSpan(text: "msg_did_not_receive2".tr, style: CustomTextStyles.bodyMediumBluegray40002), TextSpan(text: "lbl_00_57".tr, style: CustomTextStyles.bodyMediumBluegray90001)]), textAlign: TextAlign.left), SizedBox(height: 7.v), RichText(text: TextSpan(children: [TextSpan(text: "lbl_resend".tr, style: CustomTextStyles.titleSmallPrimary_1), TextSpan(text: "lbl_to".tr, style: CustomTextStyles.titleSmallBluegray40002)]), textAlign: TextAlign.left), SizedBox(height: 73.v), CustomElevatedButton(text: "lbl_continue".tr, onPressed: () {onTapContinue();}), SizedBox(height: 5.v)])), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 66.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowDownPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 7.v, bottom: 7.v)), centerTitle: true, title: AppbarTitle(text: "lbl_verification".tr)); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Add11: return AppRoutes.searchPackagePage; case BottomBarEnum.Add2: return "/"; case BottomBarEnum.Checklist2: return "/"; case BottomBarEnum.Search: return "/"; case BottomBarEnum.Framebluegray4000220x20: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.searchPackagePage: return SearchPackagePage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
/// Navigates to the successfullScreen when the action is triggered.
onTapContinue() { Get.toNamed(AppRoutes.successfullScreen, ); } 
 }
