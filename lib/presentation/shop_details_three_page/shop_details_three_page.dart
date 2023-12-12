import 'controller/shop_details_three_controller.dart';import 'models/shop_details_three_model.dart';import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ShopDetailsThreePage extends StatelessWidget {ShopDetailsThreePage({Key? key}) : super(key: key);

ShopDetailsThreeController controller = Get.put(ShopDetailsThreeController(ShopDetailsThreeModel().obs));

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 38.v), _buildSavedSuccessfullyColumnSection()]))))); } 
/// Section Widget
Widget _buildPhoneNumberVerifiedColumnSection() { return Column(children: [Column(children: [Padding(padding: EdgeInsets.only(right: 1.h), child: _buildEmailAddressVerifiedSection(emailAddressVerifiedText: "msg_phone_number_verified".tr)), SizedBox(height: 25.v), Divider(color: appTheme.gray30001)]), SizedBox(height: 25.v), _buildEmailAddressVerifiedSection(emailAddressVerifiedText: "msg_email_address_verified".tr), SizedBox(height: 25.v), Column(children: [Divider(color: appTheme.gray30001), SizedBox(height: 20.v), _buildEmailAddressVerifiedSection(emailAddressVerifiedText: "msg_two_factor_authentication".tr)])]); } 
/// Section Widget
Widget _buildSavedSuccessfullyColumnSection() { return Padding(padding: EdgeInsets.symmetric(horizontal: 23.h), child: Column(children: [_buildPhoneNumberVerifiedColumnSection(), SizedBox(height: 69.v), CustomElevatedButton(text: "msg_saved_successfully".tr, onPressed: () {onTapSavedSuccessfully();})])); } 
/// Common widget
Widget _buildEmailAddressVerifiedSection({required String emailAddressVerifiedText}) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(emailAddressVerifiedText, style: CustomTextStyles.bodyMediumGray900.copyWith(color: appTheme.gray900)), CustomImageView(imagePath: ImageConstant.imgFrameGreen400, height: 18.adaptSize, width: 18.adaptSize)]); } 
/// Navigates to the shopCreateScreen when the action is triggered.
onTapSavedSuccessfully() { Get.toNamed(AppRoutes.shopCreateScreen, ); } 
 }
