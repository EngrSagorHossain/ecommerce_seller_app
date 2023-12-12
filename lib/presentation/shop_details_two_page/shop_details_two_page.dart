import 'controller/shop_details_two_controller.dart';import 'models/shop_details_two_model.dart';import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';import 'package:ecommerce_seller_app/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ShopDetailsTwoPage extends StatelessWidget {ShopDetailsTwoPage({Key? key}) : super(key: key);

ShopDetailsTwoController controller = Get.put(ShopDetailsTwoController(ShopDetailsTwoModel().obs));

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 24.v), _buildSavedSuccessfully()]))))); } 
/// Section Widget
Widget _buildSavedSuccessfully() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("msg_phone_number_verified".tr, style: CustomTextStyles.bodyMediumGray900), CustomImageView(imagePath: ImageConstant.imgFrameGreen400, height: 18.adaptSize, width: 18.adaptSize)]), SizedBox(height: 25.v), Divider(color: appTheme.gray30001), SizedBox(height: 22.v), _buildFrame(twoFactorAuthenticationText: "lbl_email_address2".tr), SizedBox(height: 27.v), Divider(color: appTheme.gray30001), SizedBox(height: 21.v), _buildFrame(twoFactorAuthenticationText: "msg_two_factor_authentication".tr), SizedBox(height: 68.v), CustomElevatedButton(text: "msg_saved_successfully".tr, onPressed: () {onTapSavedSuccessfully();})])); } 
/// Common widget
Widget _buildFrame({required String twoFactorAuthenticationText}) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text(twoFactorAuthenticationText, style: CustomTextStyles.bodyMediumGray900.copyWith(color: appTheme.gray900)), Spacer(), CustomIconButton(height: 20.adaptSize, width: 20.adaptSize, padding: EdgeInsets.all(1.h), child: CustomImageView(imagePath: ImageConstant.imgFrame7)), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 29.h))]); } 
/// Navigates to the homeSettingsScreen when the action is triggered.
onTapSavedSuccessfully() { Get.toNamed(AppRoutes.homeSettingsScreen, ); } 
 }
