import '../controller/added_delivery_option_two_controller.dart';
import '../models/productcard11_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productcard11ItemWidget extends StatelessWidget {
  Productcard11ItemWidget(
    this.productcard11ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard11ItemModel productcard11ItemModelObj;

  var controller = Get.find<AddedDeliveryOptionTwoController>();

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
                imagePath: productcard11ItemModelObj.imageClass!.value,
                height: 50.v,
                width: 44.h,
              ),
            ),
            SizedBox(height: 4.v),
            Obx(
              () => Text(
                productcard11ItemModelObj.productName!.value,
                style: theme.textTheme.labelLarge,
              ),
            ),
            Obx(
              () => Text(
                productcard11ItemModelObj.productPrice!.value,
                style: CustomTextStyles.bodySmallGreenA700,
              ),
            ),
            Obx(
              () => Text(
                productcard11ItemModelObj.productAvailability!.value,
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
                      productcard11ItemModelObj.minusSign!.value,
                      style: CustomTextStyles.bodySmallGray500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Obx(
                      () => Text(
                        productcard11ItemModelObj.quantity!.value,
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
                        productcard11ItemModelObj.plusSign!.value,
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
