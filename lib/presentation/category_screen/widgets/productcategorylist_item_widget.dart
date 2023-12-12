import '../controller/category_controller.dart';
import '../models/productcategorylist_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductcategorylistItemWidget extends StatelessWidget {
  ProductcategorylistItemWidget(
    this.productcategorylistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcategorylistItemModel productcategorylistItemModelObj;

  var controller = Get.find<CategoryController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: productcategorylistItemModelObj.categoryImage!.value,
              height: 56.adaptSize,
              width: 56.adaptSize,
              radius: BorderRadius.circular(
                28.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    productcategorylistItemModelObj.categoryTitle!.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Obx(
                  () => Text(
                    productcategorylistItemModelObj.categoryItemCount!.value,
                    style: CustomTextStyles.bodySmallSecondaryContainer,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            height: 24.v,
            width: 55.h,
            text: "lbl_add".tr,
            margin: EdgeInsets.symmetric(vertical: 16.v),
            rightIcon: Container(
              margin: EdgeInsets.only(left: 4.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgFrameWhiteA700,
                height: 14.adaptSize,
                width: 14.adaptSize,
              ),
            ),
            buttonTextStyle: CustomTextStyles.bodySmallWhiteA70010,
          ),
        ],
      ),
    );
  }
}
