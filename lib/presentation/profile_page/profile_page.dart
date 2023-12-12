import 'controller/profile_controller.dart';import 'models/profile_model.dart';import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';import 'package:ecommerce_seller_app/widgets/custom_icon_button.dart';import 'package:ecommerce_seller_app/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {ProfilePage({Key? key}) : super(key: key);

ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [_buildArrowDown(), Container(padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 12.v), child: Column(children: [Text("lbl_jhoney_deep".tr, style: CustomTextStyles.titleMediumBlack900), SizedBox(height: 22.v), Padding(padding: EdgeInsets.only(left: 2.h), child: _buildSellingRecord(sellingRecordText: "msg_personal_details".tr, onTapSellingRecord: () {onTapPersonalDetails();})), SizedBox(height: 20.v), Padding(padding: EdgeInsets.only(left: 2.h), child: _buildSellingRecord(sellingRecordText: "lbl_selling_record".tr, onTapSellingRecord: () {onTapSellingRecord();})), SizedBox(height: 20.v), Padding(padding: EdgeInsets.only(left: 2.h), child: _buildSellingRecord(sellingRecordText: "lbl_payment_method".tr, onTapSellingRecord: () {onTapPaymentMethod();})), SizedBox(height: 20.v), Padding(padding: EdgeInsets.only(left: 2.h), child: _buildSellingRecord(sellingRecordText: "msg_terms_conditions".tr)), SizedBox(height: 34.v), CustomOutlinedButton(text: "lbl_logout".tr, buttonStyle: CustomButtonStyles.outlineRed, buttonTextStyle: CustomTextStyles.titleSmallPink300), SizedBox(height: 5.v)]))])))); } 
/// Section Widget
Widget _buildArrowDown() { return SizedBox(height: 170.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [CustomAppBar(height: 110.v, leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowDownPrimarycontainer, margin: EdgeInsets.fromLTRB(24.h, 16.v, 309.h, 52.v), onTap: () {onTapArrowDown();}), styleType: Style.bgFill), Align(alignment: Alignment.bottomCenter, child: SizedBox(height: 120.adaptSize, width: 120.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse739, height: 120.adaptSize, width: 120.adaptSize, radius: BorderRadius.circular(60.h), alignment: Alignment.center), Padding(padding: EdgeInsets.only(right: 5.h, bottom: 16.v), child: CustomIconButton(height: 20.adaptSize, width: 20.adaptSize, padding: EdgeInsets.all(4.h), decoration: IconButtonStyleHelper.fillPrimary, alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgFrameWhiteA70020x20)))])))])); } 
/// Common widget
Widget _buildSellingRecord({required String sellingRecordText, Function? onTapSellingRecord, }) { return GestureDetector(onTap: () {onTapSellingRecord!.call();}, child: Container(padding: EdgeInsets.all(12.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 3.v), child: Text(sellingRecordText, style: theme.textTheme.titleSmall!.copyWith(color: appTheme.gray80002))), CustomImageView(imagePath: ImageConstant.imgArrowRightGray80002, height: 24.adaptSize, width: 24.adaptSize)]))); } 
/// Navigates to the homeSettingsScreen when the action is triggered.
onTapArrowDown() { Get.toNamed(AppRoutes.homeSettingsScreen, ); } 
/// Navigates to the profileEditScreen when the action is triggered.
onTapPersonalDetails() { Get.toNamed(AppRoutes.profileEditScreen, ); } 
/// Navigates to the orderFilterScreen when the action is triggered.
onTapSellingRecord() { Get.toNamed(AppRoutes.orderFilterScreen, ); } 
/// Navigates to the addCardBlankScreen when the action is triggered.
onTapPaymentMethod() { Get.toNamed(AppRoutes.addCardBlankScreen, ); } 
 }