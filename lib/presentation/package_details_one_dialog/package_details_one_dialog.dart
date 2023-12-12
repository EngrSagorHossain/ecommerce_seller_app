import 'controller/package_details_one_controller.dart';import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class PackageDetailsOneDialog extends StatelessWidget {PackageDetailsOneDialog(this.controller, {Key? key}) : super(key: key);

PackageDetailsOneController controller;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SingleChildScrollView(child: Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 209.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [_buildProductDetails(), SizedBox(height: 21.v), Padding(padding: EdgeInsets.only(left: 22.h), child: Text("lbl_product_details".tr, style: CustomTextStyles.titleSmallPrimaryContainer)), SizedBox(height: 10.v), Container(width: 270.h, margin: EdgeInsets.only(left: 22.h, right: 34.h), child: Text("msg_there_are_many_variations".tr, maxLines: 5, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall!.copyWith(height: 1.50))), SizedBox(height: 20.v)]))); } 
/// Section Widget
Widget _buildProductDetails() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 327.h, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.customBorderTL40), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgClose1, height: 14.adaptSize, width: 14.adaptSize, alignment: Alignment.centerRight, onTap: () {onTapImgCloseOne();}), SizedBox(height: 7.v), CustomImageView(imagePath: ImageConstant.img5d02da5df552836, height: 209.adaptSize, width: 209.adaptSize), SizedBox(height: 20.v)])), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("msg_sony_headphone_b10".tr, style: CustomTextStyles.titleMediumPrimaryContainer)), SizedBox(height: 3.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("lbl_15_00".tr, style: CustomTextStyles.titleLargeRedA200))]); } 
/// Navigates to the packageDetailsThreeScreen when the action is triggered.
onTapImgCloseOne() { Get.toNamed(AppRoutes.packageDetailsThreeScreen, ); } 
 }
