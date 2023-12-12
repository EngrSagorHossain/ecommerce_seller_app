import '../search_package_one_screen/widgets/packagedetails_item_widget.dart';import 'controller/search_package_one_controller.dart';import 'models/packagedetails_item_model.dart';import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title_searchview.dart';import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';import 'package:ecommerce_seller_app/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';class SearchPackageOneScreen extends GetWidget<SearchPackageOneController> {const SearchPackageOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v), child: Column(children: [Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomIconButton(height: 20.adaptSize, width: 20.adaptSize, padding: EdgeInsets.all(4.h), decoration: IconButtonStyleHelper.fillGray, child: CustomImageView(imagePath: ImageConstant.imgFrameGray900)), Padding(padding: EdgeInsets.only(left: 10.h), child: CustomIconButton(height: 20.adaptSize, width: 20.adaptSize, onTap: () {onTapBtnMenu();}, child: CustomImageView(imagePath: ImageConstant.imgMenuGray60001)))]))), SizedBox(height: 27.v), _buildPackageDetails()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 66.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowDownPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 7.v, bottom: 7.v), onTap: () {onTapArrowDown();}), title: AppbarTitleSearchview(margin: EdgeInsets.only(left: 13.h), hintText: "msg_search_package_for".tr, controller: controller.searchController)); } 
/// Section Widget
Widget _buildPackageDetails() { return Expanded(child: Obx(() => ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 10.0.v), child: SizedBox(width: 327.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.gray30002)));}, itemCount: controller.searchPackageOneModelObj.value.packagedetailsItemList.value.length, itemBuilder: (context, index) {PackagedetailsItemModel model = controller.searchPackageOneModelObj.value.packagedetailsItemList.value[index]; return PackagedetailsItemWidget(model, onTapPackageEdit1: () {onTapPackageEdit1();});}))); } 
/// Navigates to the productPublishOneScreen when the action is triggered.
onTapPackageEdit1() { Get.toNamed(AppRoutes.productPublishOneScreen); } 
/// Navigates to the createPackageScreen when the action is triggered.
onTapArrowDown() { Get.toNamed(AppRoutes.createPackageScreen, ); } 
/// Navigates to the searchPackageContainerScreen when the action is triggered.
onTapBtnMenu() { Get.toNamed(AppRoutes.searchPackageContainerScreen, ); } 
 }
