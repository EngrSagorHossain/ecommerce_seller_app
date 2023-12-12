import '../edit_product_one_screen/widgets/userprofilelist_item_widget.dart';import 'controller/edit_product_one_controller.dart';import 'models/userprofilelist_item_model.dart';import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';import 'package:ecommerce_seller_app/widgets/custom_icon_button.dart';import 'package:ecommerce_seller_app/widgets/custom_search_view.dart';import 'package:flutter/material.dart';class EditProductOneScreen extends GetWidget<EditProductOneController> {const EditProductOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 5.v), child: Column(children: [SizedBox(height: 13.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(bottom: 5.v), child: Column(children: [_buildMenuRow(), SizedBox(height: 18.v), _buildUserProfileList(), SizedBox(height: 8.v), _buildAdd(), SizedBox(height: 15.v), _buildGroceriesRow(), SizedBox(height: 16.v), _buildHomeDCorRow(), SizedBox(height: 16.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: _buildFashionRow(fashionText: "lbl_fashion".tr, itemsText: "lbl_2000_items".tr)), SizedBox(height: 16.v), _buildBeautyProductRow(), SizedBox(height: 16.v), _buildSportsRow(), SizedBox(height: 16.v), _buildMedicineRow()]))))])), bottomNavigationBar: _buildPreview())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 66.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowDownPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 7.v, bottom: 7.v)), centerTitle: true, title: AppbarTitle(text: "lbl_create_packages".tr)); } 
/// Section Widget
Widget _buildMenuRow() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.symmetric(vertical: 5.v), child: CustomIconButton(height: 42.adaptSize, width: 42.adaptSize, padding: EdgeInsets.all(11.h), child: CustomImageView(imagePath: ImageConstant.imgMenu))), Expanded(child: Padding(padding: EdgeInsets.only(left: 11.h), child: CustomSearchView(controller: controller.searchController, hintText: "lbl_search_product".tr)))])); } 
/// Section Widget
Widget _buildUserProfileList() { return Align(alignment: Alignment.centerLeft, child: SizedBox(height: 65.v, child: Obx(() => ListView.separated(padding: EdgeInsets.only(left: 24.h, right: 54.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 15.h);}, itemCount: controller.editProductOneModelObj.value.userprofilelistItemList.value.length, itemBuilder: (context, index) {UserprofilelistItemModel model = controller.editProductOneModelObj.value.userprofilelistItemList.value[index]; return UserprofilelistItemWidget(model);})))); } 
/// Section Widget
Widget _buildAddButton() { return CustomElevatedButton(height: 24.v, width: 55.h, text: "lbl_add".tr, margin: EdgeInsets.symmetric(vertical: 10.v), rightIcon: Container(margin: EdgeInsets.only(left: 4.h), child: CustomImageView(imagePath: ImageConstant.imgFrameWhiteA700, height: 14.adaptSize, width: 14.adaptSize)), buttonTextStyle: CustomTextStyles.bodySmallWhiteA70010, onPressed: () {onTapAddButton();}); } 
/// Section Widget
Widget _buildRemoveButton() { return CustomElevatedButton(height: 24.v, width: 75.h, text: "lbl_remove".tr, margin: EdgeInsets.only(top: 10.v, bottom: 14.v), rightIcon: Container(margin: EdgeInsets.only(left: 4.h), child: CustomImageView(imagePath: ImageConstant.imgFrameWhiteA70014x14, height: 14.adaptSize, width: 14.adaptSize)), buttonStyle: CustomButtonStyles.fillPink, buttonTextStyle: CustomTextStyles.bodySmallWhiteA70010); } 
/// Section Widget
Widget _buildFrameRow() { return CustomElevatedButton(height: 24.v, width: 55.h, text: "lbl_add".tr, margin: EdgeInsets.symmetric(vertical: 10.v), rightIcon: Container(margin: EdgeInsets.only(left: 4.h), child: CustomImageView(imagePath: ImageConstant.imgFrameWhiteA700, height: 14.adaptSize, width: 14.adaptSize)), buttonTextStyle: CustomTextStyles.bodySmallWhiteA70010); } 
/// Section Widget
Widget _buildFrameRow1() { return CustomElevatedButton(height: 24.v, width: 55.h, text: "lbl_add".tr, margin: EdgeInsets.symmetric(vertical: 10.v), rightIcon: Container(margin: EdgeInsets.only(left: 4.h), child: CustomImageView(imagePath: ImageConstant.imgFrameWhiteA700, height: 14.adaptSize, width: 14.adaptSize)), buttonTextStyle: CustomTextStyles.bodySmallWhiteA70010); } 
/// Section Widget
Widget _buildFrameRow2() { return CustomElevatedButton(height: 24.v, width: 55.h, text: "lbl_add".tr, margin: EdgeInsets.symmetric(vertical: 10.v), rightIcon: Container(margin: EdgeInsets.only(left: 4.h), child: CustomImageView(imagePath: ImageConstant.imgFrameWhiteA700, height: 14.adaptSize, width: 14.adaptSize)), buttonTextStyle: CustomTextStyles.bodySmallWhiteA70010); } 
/// Section Widget
Widget _buildFrameRow3() { return CustomElevatedButton(height: 24.v, width: 55.h, text: "lbl_add".tr, margin: EdgeInsets.symmetric(vertical: 10.v), rightIcon: Container(margin: EdgeInsets.only(left: 4.h), child: CustomImageView(imagePath: ImageConstant.imgFrameWhiteA700, height: 14.adaptSize, width: 14.adaptSize)), buttonTextStyle: CustomTextStyles.bodySmallWhiteA70010); } 
/// Section Widget
Widget _buildFrameRow4() { return CustomElevatedButton(height: 24.v, width: 55.h, text: "lbl_add".tr, margin: EdgeInsets.symmetric(vertical: 10.v), rightIcon: Container(margin: EdgeInsets.only(left: 4.h), child: CustomImageView(imagePath: ImageConstant.imgFrameWhiteA700, height: 14.adaptSize, width: 14.adaptSize)), buttonTextStyle: CustomTextStyles.bodySmallWhiteA70010); } 
/// Section Widget
Widget _buildAdd() { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v), decoration: AppDecoration.fillGray, child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgEllipse4, height: 56.adaptSize, width: 56.adaptSize, radius: BorderRadius.circular(28.h)), Padding(padding: EdgeInsets.only(left: 15.h, bottom: 7.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_electronics".tr, style: theme.textTheme.titleLarge), Text("lbl_2000_items".tr, style: CustomTextStyles.bodySmallSecondaryContainer)])), Spacer(), Padding(padding: EdgeInsets.symmetric(vertical: 12.v), child: CustomIconButton(height: 32.adaptSize, width: 32.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillBlue, child: CustomImageView(imagePath: ImageConstant.imgArrowUp)))])), SizedBox(height: 12.v), Padding(padding: EdgeInsets.only(left: 62.h), child: _buildSpeakerRow(speakerText: "lbl_mobile".tr, arrowRightImage: ImageConstant.imgArrowDownSecondarycontainer)), SizedBox(height: 13.v), Container(padding: EdgeInsets.symmetric(horizontal: 3.h), child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(left: 23.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgEllipse139610, height: 44.adaptSize, width: 44.adaptSize, radius: BorderRadius.circular(22.h)), Padding(padding: EdgeInsets.only(left: 10.h, top: 5.v, bottom: 3.v), child: _buildFrameColumn(message: "msg_samsung_s20_ultra".tr, itemLabel: "lbl_2000_items".tr)), Spacer(), _buildAddButton()])), SizedBox(height: 18.v), Padding(padding: EdgeInsets.only(left: 23.h, right: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 48.v, width: 47.h, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse139610, height: 44.adaptSize, width: 44.adaptSize, radius: BorderRadius.circular(22.h), alignment: Alignment.topLeft), CustomIconButton(height: 20.adaptSize, width: 20.adaptSize, padding: EdgeInsets.all(1.h), decoration: IconButtonStyleHelper.fillWhiteA, alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgCheckmark))])), Padding(padding: EdgeInsets.only(left: 7.h, top: 5.v, bottom: 7.v), child: _buildFrameColumn(message: "msg_samsung_s20_ultra".tr, itemLabel: "lbl_2000_items".tr)), Spacer(), _buildRemoveButton()])), SizedBox(height: 14.v), Padding(padding: EdgeInsets.only(left: 23.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgEllipse139610, height: 44.adaptSize, width: 44.adaptSize, radius: BorderRadius.circular(22.h)), Padding(padding: EdgeInsets.only(left: 10.h, top: 5.v, bottom: 3.v), child: _buildFrameColumn(message: "msg_samsung_s20_ultra".tr, itemLabel: "lbl_2000_items".tr)), Spacer(), _buildFrameRow()])), SizedBox(height: 18.v), Padding(padding: EdgeInsets.only(left: 23.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgEllipse139610, height: 44.adaptSize, width: 44.adaptSize, radius: BorderRadius.circular(22.h)), Padding(padding: EdgeInsets.only(left: 10.h, top: 5.v, bottom: 3.v), child: _buildFrameColumn(message: "msg_samsung_s20_ultra".tr, itemLabel: "lbl_2000_items".tr)), Spacer(), _buildFrameRow1()])), SizedBox(height: 18.v), Padding(padding: EdgeInsets.only(left: 23.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgEllipse139610, height: 44.adaptSize, width: 44.adaptSize, radius: BorderRadius.circular(22.h)), Padding(padding: EdgeInsets.only(left: 10.h, top: 5.v, bottom: 3.v), child: _buildFrameColumn(message: "msg_samsung_s20_ultra".tr, itemLabel: "lbl_2000_items".tr)), Spacer(), _buildFrameRow2()])), SizedBox(height: 18.v), Padding(padding: EdgeInsets.only(left: 23.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgEllipse139610, height: 44.adaptSize, width: 44.adaptSize, radius: BorderRadius.circular(22.h)), Padding(padding: EdgeInsets.only(left: 10.h, top: 5.v, bottom: 3.v), child: _buildFrameColumn(message: "msg_samsung_s20_ultra".tr, itemLabel: "lbl_2000_items".tr)), Spacer(), _buildFrameRow3()])), SizedBox(height: 18.v), Padding(padding: EdgeInsets.only(left: 23.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgEllipse139610, height: 44.adaptSize, width: 44.adaptSize, radius: BorderRadius.circular(22.h)), Padding(padding: EdgeInsets.only(left: 10.h, top: 5.v, bottom: 3.v), child: _buildFrameColumn(message: "msg_samsung_s20_ultra".tr, itemLabel: "lbl_2000_items".tr)), Spacer(), _buildFrameRow4()]))])), SizedBox(height: 25.v), Padding(padding: EdgeInsets.only(left: 62.h), child: _buildSpeakerRow(speakerText: "lbl_speaker".tr, arrowRightImage: ImageConstant.imgArrowRightSecondarycontainer)), SizedBox(height: 7.v), Padding(padding: EdgeInsets.only(left: 62.h), child: _buildSpeakerRow(speakerText: "lbl_accessories".tr, arrowRightImage: ImageConstant.imgArrowRightSecondarycontainer)), SizedBox(height: 12.v), Padding(padding: EdgeInsets.only(left: 62.h), child: _buildSpeakerRow(speakerText: "lbl_headphone".tr, arrowRightImage: ImageConstant.imgArrowRightSecondarycontainer)), SizedBox(height: 8.v), Padding(padding: EdgeInsets.only(left: 62.h), child: _buildSpeakerRow(speakerText: "lbl_tv".tr, arrowRightImage: ImageConstant.imgArrowRightSecondarycontainer)), SizedBox(height: 9.v), Padding(padding: EdgeInsets.only(left: 62.h), child: _buildSpeakerRow(speakerText: "lbl_monitor".tr, arrowRightImage: ImageConstant.imgArrowRightSecondarycontainer)), SizedBox(height: 9.v)])); } 
/// Section Widget
Widget _buildGroceriesRow() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgEllipse456x56, height: 56.adaptSize, width: 56.adaptSize, radius: BorderRadius.circular(28.h)), Padding(padding: EdgeInsets.only(left: 15.h, bottom: 7.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_groceries".tr, style: theme.textTheme.titleLarge), Text("lbl_2000_items".tr, style: CustomTextStyles.bodySmallSecondaryContainer)])), Spacer(), Padding(padding: EdgeInsets.symmetric(vertical: 12.v), child: CustomIconButton(height: 32.adaptSize, width: 32.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillBlue, child: CustomImageView(imagePath: ImageConstant.imgArrowDown)))])); } 
/// Section Widget
Widget _buildHomeDCorRow() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgEllipse41, height: 56.adaptSize, width: 56.adaptSize, radius: BorderRadius.circular(28.h)), Padding(padding: EdgeInsets.only(left: 15.h, bottom: 7.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_home_d_cor".tr, style: theme.textTheme.titleLarge), Text("lbl_2000_items".tr, style: CustomTextStyles.bodySmallSecondaryContainer)])), Spacer(), Padding(padding: EdgeInsets.symmetric(vertical: 12.v), child: CustomIconButton(height: 32.adaptSize, width: 32.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillBlue, child: CustomImageView(imagePath: ImageConstant.imgArrowDown)))])); } 
/// Section Widget
Widget _buildBeautyProductRow() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgEllipse43, height: 56.adaptSize, width: 56.adaptSize, radius: BorderRadius.circular(28.h)), Padding(padding: EdgeInsets.only(left: 15.h, top: 3.v, bottom: 7.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_beauty_product".tr, style: theme.textTheme.titleLarge), Text("lbl_2000_items".tr, style: CustomTextStyles.bodySmallSecondaryContainer)])), Spacer(), Padding(padding: EdgeInsets.symmetric(vertical: 12.v), child: CustomIconButton(height: 32.adaptSize, width: 32.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillBlue, child: CustomImageView(imagePath: ImageConstant.imgArrowDown)))])); } 
/// Section Widget
Widget _buildSportsRow() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgEllipse44, height: 56.adaptSize, width: 56.adaptSize, radius: BorderRadius.circular(28.h)), Padding(padding: EdgeInsets.only(left: 15.h, top: 3.v, bottom: 7.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_sports".tr, style: theme.textTheme.titleLarge), Text("lbl_2000_items".tr, style: CustomTextStyles.bodySmallSecondaryContainer)])), Spacer(), Padding(padding: EdgeInsets.symmetric(vertical: 12.v), child: CustomIconButton(height: 32.adaptSize, width: 32.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillBlue, child: CustomImageView(imagePath: ImageConstant.imgArrowDown)))])); } 
/// Section Widget
Widget _buildMedicineRow() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgEllipse45, height: 56.adaptSize, width: 56.adaptSize, radius: BorderRadius.circular(28.h)), Padding(padding: EdgeInsets.only(left: 15.h, bottom: 7.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_medicine".tr, style: theme.textTheme.titleLarge), Text("lbl_2000_items".tr, style: CustomTextStyles.bodySmallSecondaryContainer)])), Spacer(), Padding(padding: EdgeInsets.symmetric(vertical: 12.v), child: CustomIconButton(height: 32.adaptSize, width: 32.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillBlue, child: CustomImageView(imagePath: ImageConstant.imgArrowDown)))])); } 
/// Section Widget
Widget _buildPreviewButton() { return CustomElevatedButton(width: 156.h, text: "lbl_preview".tr, rightIcon: Container(margin: EdgeInsets.only(left: 8.h), child: CustomImageView(imagePath: ImageConstant.imgArrowrightWhiteA700, height: 20.adaptSize, width: 20.adaptSize)), alignment: Alignment.topRight); } 
/// Section Widget
Widget _buildPreview() { return Container(height: 60.v, width: 326.h, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 5.v), child: Stack(alignment: Alignment.topRight, children: [Padding(padding: EdgeInsets.only(top: 4.v), child: _buildFashionRow(fashionText: "lbl_fashion".tr, itemsText: "lbl_2000_items".tr)), _buildPreviewButton()])); } 
/// Common widget
Widget _buildFrameColumn({required String message, required String itemLabel, }) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(message, style: theme.textTheme.bodyMedium!.copyWith(color: appTheme.black900)), Text(itemLabel, style: CustomTextStyles.bodySmallSecondaryContainer.copyWith(color: theme.colorScheme.secondaryContainer))]); } 
/// Common widget
Widget _buildSpeakerRow({required String speakerText, required String arrowRightImage, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(speakerText, style: CustomTextStyles.bodyLargeBlack90016.copyWith(color: appTheme.black900)), CustomImageView(imagePath: arrowRightImage, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(bottom: 4.v))]); } 
/// Common widget
Widget _buildFashionRow({required String fashionText, required String itemsText, }) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgEllipse42, height: 56.adaptSize, width: 56.adaptSize, radius: BorderRadius.circular(28.h)), Padding(padding: EdgeInsets.only(left: 15.h, bottom: 7.v), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Text(fashionText, style: theme.textTheme.titleLarge!.copyWith(color: theme.colorScheme.primaryContainer.withOpacity(1)))), Text(itemsText, style: CustomTextStyles.bodySmallSecondaryContainer.copyWith(color: theme.colorScheme.secondaryContainer))])), Spacer(), Padding(padding: EdgeInsets.symmetric(vertical: 12.v), child: CustomIconButton(height: 32.adaptSize, width: 32.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillBlue, child: CustomImageView(imagePath: ImageConstant.imgArrowDown)))]); } 
/// Navigates to the productPublishThreeScreen when the action is triggered.
onTapAddButton() { Get.toNamed(AppRoutes.productPublishThreeScreen, ); } 
 }