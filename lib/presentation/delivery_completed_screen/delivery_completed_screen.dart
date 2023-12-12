import '../delivery_completed_screen/widgets/completedlist_item_widget.dart';import 'controller/delivery_completed_controller.dart';import 'models/completedlist_item_model.dart';import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';import 'package:ecommerce_seller_app/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';class DeliveryCompletedScreen extends GetWidget<DeliveryCompletedController> {const DeliveryCompletedScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 3.v), child: Padding(padding: EdgeInsets.only(left: 23.h, right: 23.h, bottom: 5.v), child: Column(children: [_buildCompletedRow(), SizedBox(height: 24.v), SizedBox(height: 696.v, width: 328.h, child: Stack(alignment: Alignment.center, children: [_buildCompletedButton(), _buildCompletedList()])), SizedBox(height: 7.v), _buildDeliveryCompletedRow()])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 66.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgMenu, margin: EdgeInsets.only(left: 24.h, top: 7.v, bottom: 7.v)), centerTitle: true, title: AppbarTitle(text: "msg_today_s_delivery".tr), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgNotification, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 7.v))]); } 
/// Section Widget
Widget _buildCompletedRow() { return Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end, children: [Text("lbl_completed".tr, style: theme.textTheme.titleMedium), Padding(padding: EdgeInsets.only(left: 6.h, bottom: 4.v), child: Text("lbl_2000_items2".tr, style: CustomTextStyles.bodySmallSecondaryContainer)), Spacer(), Padding(padding: EdgeInsets.only(top: 3.v), child: CustomIconButton(height: 20.adaptSize, width: 20.adaptSize, padding: EdgeInsets.all(4.h), decoration: IconButtonStyleHelper.fillGray, child: CustomImageView(imagePath: ImageConstant.imgFrameGray900))), Padding(padding: EdgeInsets.only(left: 10.h, top: 3.v), child: CustomIconButton(height: 20.adaptSize, width: 20.adaptSize, child: CustomImageView(imagePath: ImageConstant.imgMenuGray900)))]); } 
/// Section Widget
Widget _buildCompletedButton() { return CustomElevatedButton(height: 31.v, width: 156.h, text: "lbl_completed".tr, margin: EdgeInsets.only(bottom: 189.v), buttonStyle: CustomButtonStyles.fillGreen, buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700, alignment: Alignment.bottomRight); } 
/// Section Widget
Widget _buildCompletedList() { return Align(alignment: Alignment.center, child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 5.0.v), child: SizedBox(width: 327.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.gray30002)));}, itemCount: controller.deliveryCompletedModelObj.value.completedlistItemList.value.length, itemBuilder: (context, index) {CompletedlistItemModel model = controller.deliveryCompletedModelObj.value.completedlistItemList.value[index]; return CompletedlistItemWidget(model, onTapTxtPackageName: () {onTapTxtPackageName();});}))); } 
/// Section Widget
Widget _buildCompletedButton1() { return CustomElevatedButton(height: 31.v, width: 156.h, text: "lbl_completed".tr, buttonStyle: CustomButtonStyles.fillGreen, buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700); } 
/// Section Widget
Widget _buildDeliveryCompletedRow() { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(margin: EdgeInsets.only(top: 1.v, right: 7.h), padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 5.v), decoration: AppDecoration.fillBlueAC.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Column(mainAxisSize: MainAxisSize.min, children: [Container(width: 145.h, margin: EdgeInsets.symmetric(horizontal: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(height: 69.adaptSize, width: 69.adaptSize, padding: EdgeInsets.all(5.h), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: CustomImageView(imagePath: ImageConstant.img5d02da5df552836, height: 58.adaptSize, width: 58.adaptSize, alignment: Alignment.center)), Container(height: 69.adaptSize, width: 69.adaptSize, padding: EdgeInsets.all(5.h), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: CustomImageView(imagePath: ImageConstant.imgHuaweiFreebuds, height: 58.adaptSize, width: 58.adaptSize, alignment: Alignment.center))])), SizedBox(height: 5.v), Container(width: 146.h, margin: EdgeInsets.only(right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 69.v, width: 75.h, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.centerLeft, child: Container(height: 69.adaptSize, width: 69.adaptSize, margin: EdgeInsets.only(left: 1.h), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(6.h)))), CustomImageView(imagePath: ImageConstant.imgDCc1, height: 40.v, width: 75.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 12.v))])), Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: appTheme.whiteA700, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder6), child: Container(height: 69.adaptSize, width: 69.adaptSize, decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.img9447441f632825, height: 47.v, width: 62.h, alignment: Alignment.center), Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 24.v), decoration: AppDecoration.fillPrimaryContainer1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Text("lbl_2_more".tr, style: CustomTextStyles.bodySmallWhiteA700)))])))]))]))), Expanded(child: Padding(padding: EdgeInsets.only(left: 7.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_order_id_aa4587v".tr, style: CustomTextStyles.titleSmallMontserratGray40004), SizedBox(height: 8.v), Text("msg_electric_package".tr, style: CustomTextStyles.titleSmallGray900), SizedBox(width: 138.h, child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_address".tr, style: CustomTextStyles.bodySmall11), TextSpan(text: "msg_42_5_malibagh_moor".tr, style: CustomTextStyles.bodySmallGray60001)]), textAlign: TextAlign.left)), SizedBox(height: 4.v), Text("lbl_50_00".tr, style: CustomTextStyles.titleSmallRed300), SizedBox(height: 14.v), _buildCompletedButton1()])))]); } 
/// Navigates to the packageDetailsFourScreen when the action is triggered.
onTapTxtPackageName() { Get.toNamed(AppRoutes.packageDetailsFourScreen, ); } 
 }
