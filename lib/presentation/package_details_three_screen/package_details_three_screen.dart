import '../package_details_three_screen/widgets/productcardlist_item_widget.dart';import 'controller/package_details_three_controller.dart';import 'models/productcardlist_item_model.dart';import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'package:ecommerce_seller_app/presentation/package_details_one_dialog/package_details_one_dialog.dart';import 'package:ecommerce_seller_app/presentation/package_details_one_dialog/controller/package_details_one_controller.dart';class PackageDetailsThreeScreen extends GetWidget<PackageDetailsThreeController> {const PackageDetailsThreeScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 10.v), child: Padding(padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_in_queue".tr, style: theme.textTheme.titleMedium), SizedBox(height: 16.v), _buildProductCardList()])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 67.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowDownPrimarycontainer, margin: EdgeInsets.only(left: 25.h, top: 7.v, bottom: 7.v), onTap: () {onTapArrowDown();}), centerTitle: true, title: AppbarTitle(text: "msg_electronic_package".tr)); } 
/// Section Widget
Widget _buildProductCardList() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 10.0.v), child: SizedBox(width: 326.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.gray30002)));}, itemCount: controller.packageDetailsThreeModelObj.value.productcardlistItemList.value.length, itemBuilder: (context, index) {ProductcardlistItemModel model = controller.packageDetailsThreeModelObj.value.productcardlistItemList.value[index]; return ProductcardlistItemWidget(model, onTapFrame: () {onTapFrame();});})); } 
/// Displays a dialog with the [PackageDetailsOneDialog] content.
onTapFrame() { Get.dialog(AlertDialog(backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0), content: PackageDetailsOneDialog(Get.put(PackageDetailsOneController())))); } 
/// Navigates to the deliveryInQueueScreen when the action is triggered.
onTapArrowDown() { Get.toNamed(AppRoutes.deliveryInQueueScreen, ); } 
 }