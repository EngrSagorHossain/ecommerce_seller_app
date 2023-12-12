import '../controller/package_details_three_controller.dart';
import '../models/productcardlist_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductcardlistItemWidget extends StatelessWidget {
  ProductcardlistItemWidget(
    this.productcardlistItemModelObj, {
    Key? key,
    this.onTapFrame,
  }) : super(
          key: key,
        );

  ProductcardlistItemModel productcardlistItemModelObj;

  var controller = Get.find<PackageDetailsThreeController>();

  VoidCallback? onTapFrame;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: productcardlistItemModelObj.image!.value,
            height: 120.adaptSize,
            width: 120.adaptSize,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 192.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => Text(
                        productcardlistItemModelObj.author!.value,
                        style: CustomTextStyles.bodySmallOnError,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgComponent1,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Obx(
                              () => Text(
                                productcardlistItemModelObj.ratingText!.value,
                                style:
                                    CustomTextStyles.bodySmallMontserratOnError,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Obx(
                              () => Text(
                                productcardlistItemModelObj.price!.value,
                                style:
                                    CustomTextStyles.bodySmallMontserratOnError,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.v),
              Obx(
                () => Text(
                  productcardlistItemModelObj.title!.value,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              SizedBox(height: 2.v),
              Obx(
                () => Text(
                  productcardlistItemModelObj.price1!.value,
                  style: CustomTextStyles.titleMediumRed300,
                ),
              ),
              SizedBox(height: 3.v),
              Obx(
                () => Text(
                  productcardlistItemModelObj.quantity!.value,
                  style: CustomTextStyles.bodySmallOnError,
                ),
              ),
              SizedBox(height: 6.v),
              GestureDetector(
                onTap: () {
                  onTapFrame!.call();
                },
                child: Row(
                  children: [
                    Obx(
                      () => Text(
                        productcardlistItemModelObj.detailsText!.value,
                        style: CustomTextStyles.bodySmallBlue300,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrameBlue300,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.only(left: 4.h),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
