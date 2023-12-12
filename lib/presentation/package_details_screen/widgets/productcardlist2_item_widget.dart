import '../controller/package_details_controller.dart';
import '../models/productcardlist2_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productcardlist2ItemWidget extends StatelessWidget {
  Productcardlist2ItemWidget(
    this.productcardlist2ItemModelObj, {
    Key? key,
    this.onTapFrame,
  }) : super(
          key: key,
        );

  Productcardlist2ItemModel productcardlist2ItemModelObj;

  var controller = Get.find<PackageDetailsController>();

  VoidCallback? onTapFrame;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: productcardlist2ItemModelObj.image!.value,
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
                        productcardlist2ItemModelObj.author!.value,
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
                                productcardlist2ItemModelObj.ratingText!.value,
                                style:
                                    CustomTextStyles.bodySmallMontserratOnError,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Obx(
                              () => Text(
                                productcardlist2ItemModelObj.price!.value,
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
                  productcardlist2ItemModelObj.title!.value,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              SizedBox(height: 2.v),
              Obx(
                () => Text(
                  productcardlist2ItemModelObj.price1!.value,
                  style: CustomTextStyles.titleMediumRed300,
                ),
              ),
              SizedBox(height: 3.v),
              Obx(
                () => Text(
                  productcardlist2ItemModelObj.quantity!.value,
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
                        productcardlist2ItemModelObj.detailsText!.value,
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
