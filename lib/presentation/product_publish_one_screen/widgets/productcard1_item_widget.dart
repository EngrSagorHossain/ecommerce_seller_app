import '../controller/product_publish_one_controller.dart';
import '../models/productcard1_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productcard1ItemWidget extends StatelessWidget {
  Productcard1ItemWidget(
    this.productcard1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard1ItemModel productcard1ItemModelObj;

  var controller = Get.find<ProductPublishOneController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 69.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: Column(
          children: [
            Obx(
              () => CustomImageView(
                imagePath: productcard1ItemModelObj.imageClass!.value,
                height: 50.v,
                width: 44.h,
              ),
            ),
            SizedBox(height: 4.v),
            Obx(
              () => Text(
                productcard1ItemModelObj.title!.value,
                style: theme.textTheme.labelLarge,
              ),
            ),
            Obx(
              () => Text(
                productcard1ItemModelObj.price!.value,
                style: CustomTextStyles.bodySmallGreenA700,
              ),
            ),
            Obx(
              () => Text(
                productcard1ItemModelObj.availability!.value,
                style: CustomTextStyles.bodySmallRed300_1,
              ),
            ),
            SizedBox(height: 7.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 2.v,
              ),
              decoration: AppDecoration.outlineGray40002.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Obx(
                    () => Text(
                      productcard1ItemModelObj.text!.value,
                      style: CustomTextStyles.bodySmallGray500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Obx(
                      () => Text(
                        productcard1ItemModelObj.quantity!.value,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      right: 1.h,
                    ),
                    child: Obx(
                      () => Text(
                        productcard1ItemModelObj.text1!.value,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
