import '../controller/search_package_controller.dart';
import '../models/orderdetailslist_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrderdetailslistItemWidget extends StatelessWidget {
  OrderdetailslistItemWidget(
    this.orderdetailslistItemModelObj, {
    Key? key,
    this.onTapBtnEditButton,
  }) : super(
          key: key,
        );

  OrderdetailslistItemModel orderdetailslistItemModelObj;

  var controller = Get.find<SearchPackageController>();

  VoidCallback? onTapBtnEditButton;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 6.v,
        ),
        decoration: AppDecoration.fillGray5002,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 7.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  child: Obx(
                    () => Text(
                      orderdetailslistItemModelObj.orderID!.value,
                      style: CustomTextStyles.titleSmallGray40001,
                    ),
                  ),
                ),
                CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(4.h),
                  decoration: IconButtonStyleHelper.fillPrimary,
                  onTap: () {
                    onTapBtnEditButton!.call();
                  },
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMynauiEditWhiteA700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 9.v),
            Obx(
              () => Text(
                orderdetailslistItemModelObj.packageName!.value,
                style: CustomTextStyles.titleSmallGray900,
              ),
            ),
            SizedBox(height: 2.v),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_address".tr,
                    style: CustomTextStyles.bodySmall11,
                  ),
                  TextSpan(
                    text: "msg_42_5_malibagh_moor".tr,
                    style: CustomTextStyles.bodySmallGray60001,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 4.v),
            Obx(
              () => Text(
                orderdetailslistItemModelObj.price!.value,
                style: CustomTextStyles.titleSmallRed300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
