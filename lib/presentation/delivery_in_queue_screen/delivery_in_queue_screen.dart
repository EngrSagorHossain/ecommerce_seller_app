import '../delivery_in_queue_screen/widgets/orderdetailslist2_item_widget.dart';import 'controller/delivery_in_queue_controller.dart';import 'models/orderdetailslist2_item_model.dart';import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';import 'package:ecommerce_seller_app/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';class DeliveryInQueueScreen extends GetWidget<DeliveryInQueueController> {const DeliveryInQueueScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 2.v), child: Padding(padding: EdgeInsets.only(left: 23.h, right: 23.h, bottom: 5.v), child: Column(children: [_buildInQueueRow(), SizedBox(height: 22.v), _buildOrderDetailsList(), SizedBox(height: 7.v), _buildInQueueRow1(), SizedBox(height: 10.v), _buildInQueueColumn2()])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 66.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgMenu, margin: EdgeInsets.only(left: 24.h, top: 7.v, bottom: 7.v), onTap: () {onTapMenu();}), centerTitle: true, title: AppbarTitle(text: "msg_today_s_delivery".tr), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgNotification, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 7.v))]); } 
/// Section Widget
Widget _buildInQueueRow() { return Padding(padding: EdgeInsets.only(left: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end, children: [Text("lbl_in_queue".tr, style: theme.textTheme.titleMedium), Padding(padding: EdgeInsets.only(left: 6.h, bottom: 4.v), child: Text("lbl_2000_items2".tr, style: CustomTextStyles.bodySmallSecondaryContainer)), Spacer(), Padding(padding: EdgeInsets.only(top: 3.v), child: CustomIconButton(height: 20.adaptSize, width: 20.adaptSize, padding: EdgeInsets.all(4.h), decoration: IconButtonStyleHelper.fillGray, child: CustomImageView(imagePath: ImageConstant.imgFrameGray900))), Padding(padding: EdgeInsets.only(left: 10.h, top: 3.v), child: CustomIconButton(height: 20.adaptSize, width: 20.adaptSize, onTap: () {onTapBtnMenu();}, child: CustomImageView(imagePath: ImageConstant.imgMenuGray60001)))])); } 
/// Section Widget
Widget _buildOrderDetailsList() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 3.5.v), child: SizedBox(width: 327.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.gray30002)));}, itemCount: controller.deliveryInQueueModelObj.value.orderdetailslist2ItemList.value.length, itemBuilder: (context, index) {Orderdetailslist2ItemModel model = controller.deliveryInQueueModelObj.value.orderdetailslist2ItemList.value[index]; return Orderdetailslist2ItemWidget(model, onTapTxtPackageName: () {onTapTxtPackageName();});})); } 
/// Section Widget
Widget _buildInQueueColumn() { return CustomElevatedButton(height: 31.v, width: 156.h, text: "lbl_in_queue".tr, buttonStyle: CustomButtonStyles.fillRed, buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700); } 
/// Section Widget
Widget _buildInQueueRow1() { return Padding(padding: EdgeInsets.only(left: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(margin: EdgeInsets.only(top: 1.v, right: 7.h), padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 5.v), decoration: AppDecoration.fillBlueAC.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Column(mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.symmetric(horizontal: 1.h), child: _buildDdadfRow()), SizedBox(height: 5.v), Container(width: 146.h, margin: EdgeInsets.only(right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 69.v, width: 75.h, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.centerLeft, child: Container(height: 69.adaptSize, width: 69.adaptSize, margin: EdgeInsets.only(left: 1.h), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(6.h)))), CustomImageView(imagePath: ImageConstant.imgDCc1, height: 40.v, width: 75.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 12.v))])), _buildF(moreCounter: "lbl_2_more".tr)]))]))), Expanded(child: Padding(padding: EdgeInsets.only(left: 7.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_order_id_aa4587v".tr, style: CustomTextStyles.titleSmallMontserratGray40004), SizedBox(height: 8.v), Text("msg_electric_package".tr, style: CustomTextStyles.titleSmallGray900), SizedBox(width: 138.h, child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_address".tr, style: CustomTextStyles.bodySmall11), TextSpan(text: "msg_42_5_malibagh_moor".tr, style: CustomTextStyles.bodySmallGray60001)]), textAlign: TextAlign.left)), SizedBox(height: 4.v), Text("lbl_50_00".tr, style: CustomTextStyles.titleSmallRed300), SizedBox(height: 14.v), _buildInQueueColumn()])))])); } 
/// Section Widget
Widget _buildInQueueColumn1() { return CustomElevatedButton(height: 31.v, width: 156.h, text: "lbl_in_queue".tr, buttonStyle: CustomButtonStyles.fillRed, buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700); } 
/// Section Widget
Widget _buildInQueueColumn2() { return Column(children: [Divider(color: appTheme.gray30002), SizedBox(height: 7.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(margin: EdgeInsets.only(top: 1.v, right: 7.h), padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 5.v), decoration: AppDecoration.fillBlueAC.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Column(mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.symmetric(horizontal: 1.h), child: _buildDdadfRow()), SizedBox(height: 5.v), Container(width: 146.h, margin: EdgeInsets.only(right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 69.v, width: 75.h, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.centerLeft, child: Container(height: 69.adaptSize, width: 69.adaptSize, margin: EdgeInsets.only(left: 1.h), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(6.h)))), CustomImageView(imagePath: ImageConstant.imgDCc1, height: 40.v, width: 75.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 12.v))])), _buildF(moreCounter: "lbl_2_more".tr)]))]))), Expanded(child: Padding(padding: EdgeInsets.only(left: 7.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_order_id_aa4587v".tr, style: CustomTextStyles.titleSmallMontserratGray40004), SizedBox(height: 8.v), Text("msg_electric_package".tr, style: CustomTextStyles.titleSmallGray900), SizedBox(width: 138.h, child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_address".tr, style: CustomTextStyles.bodySmall11), TextSpan(text: "msg_42_5_malibagh_moor".tr, style: CustomTextStyles.bodySmallGray60001)]), textAlign: TextAlign.left)), SizedBox(height: 4.v), Text("lbl_50_00".tr, style: CustomTextStyles.titleSmallRed300), SizedBox(height: 14.v), _buildInQueueColumn1()])))])]); } 
/// Common widget
Widget _buildDdadfRow() { return SizedBox(width: 145.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(height: 69.adaptSize, width: 69.adaptSize, padding: EdgeInsets.all(5.h), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: CustomImageView(imagePath: ImageConstant.img5d02da5df552836, height: 58.adaptSize, width: 58.adaptSize, alignment: Alignment.center)), Container(height: 69.adaptSize, width: 69.adaptSize, padding: EdgeInsets.all(5.h), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: CustomImageView(imagePath: ImageConstant.imgHuaweiFreebuds, height: 58.adaptSize, width: 58.adaptSize, alignment: Alignment.center))])); } 
/// Common widget
Widget _buildF({required String moreCounter}) { return Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: appTheme.whiteA700, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder6), child: Container(height: 69.adaptSize, width: 69.adaptSize, decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.img9447441f632825, height: 47.v, width: 62.h, alignment: Alignment.center), Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 24.v), decoration: AppDecoration.fillPrimaryContainer1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Text(moreCounter, style: CustomTextStyles.bodySmallWhiteA700.copyWith(color: appTheme.whiteA700))))]))); } 
/// Navigates to the packageDetailsThreeScreen when the action is triggered.
onTapTxtPackageName() { Get.toNamed(AppRoutes.packageDetailsThreeScreen); } 
/// Navigates to the homeSettingsScreen when the action is triggered.
onTapMenu() { Get.toNamed(AppRoutes.homeSettingsScreen, ); } 
/// Navigates to the deliveryInQueueOneScreen when the action is triggered.
onTapBtnMenu() { Get.toNamed(AppRoutes.deliveryInQueueOneScreen, ); } 
 }