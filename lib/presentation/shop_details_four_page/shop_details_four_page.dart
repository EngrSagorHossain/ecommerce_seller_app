import 'controller/shop_details_four_controller.dart';import 'models/shop_details_four_model.dart';import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';import 'package:ecommerce_seller_app/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ShopDetailsFourPage extends StatelessWidget {ShopDetailsFourPage({Key? key}) : super(key: key);

ShopDetailsFourController controller = Get.put(ShopDetailsFourController(ShopDetailsFourModel().obs));

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 38.v), _buildSavedSuccessfully()]))))); } 
/// Section Widget
Widget _buildPhoneNumberVerifiedFrame() { return Column(children: [_buildEmailAddressVerifiedFrame(text: "msg_phone_number_verified".tr), SizedBox(height: 25.v), Divider(color: appTheme.gray30001), SizedBox(height: 24.v), _buildEmailAddressVerifiedFrame(text: "msg_email_address_verified".tr), SizedBox(height: 25.v), Divider(color: appTheme.gray30001), SizedBox(height: 21.v), GestureDetector(onTap: () {onTapFrame();}, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_two_factor_authentication".tr, style: CustomTextStyles.bodyMediumGray900), Spacer(), CustomIconButton(height: 20.adaptSize, width: 20.adaptSize, padding: EdgeInsets.all(1.h), child: CustomImageView(imagePath: ImageConstant.imgFrame7)), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 29.h))]))]); } 
/// Section Widget
Widget _buildSavedSuccessfully() { return Padding(padding: EdgeInsets.symmetric(horizontal: 23.h), child: Column(children: [_buildPhoneNumberVerifiedFrame(), SizedBox(height: 68.v), CustomElevatedButton(text: "msg_saved_successfully".tr)])); } 
/// Common widget
Widget _buildEmailAddressVerifiedFrame({required String text}) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(text, style: CustomTextStyles.bodyMediumGray900.copyWith(color: appTheme.gray900)), CustomImageView(imagePath: ImageConstant.imgFrameGreen400, height: 18.adaptSize, width: 18.adaptSize)]); } 
/// Navigates to the faScreen when the action is triggered.
onTapFrame() { Get.toNamed(AppRoutes.faScreen, ); } 
 }
