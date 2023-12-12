import '../controller/category_four_controller.dart';
import '../models/productcard3_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productcard3ItemWidget extends StatelessWidget {
  Productcard3ItemWidget(
    this.productcard3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard3ItemModel productcard3ItemModelObj;

  var controller = Get.find<CategoryFourController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse139610,
            height: 44.adaptSize,
            width: 44.adaptSize,
            radius: BorderRadius.circular(
              22.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 5.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    productcard3ItemModelObj.title!.value,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Obx(
                  () => Text(
                    productcard3ItemModelObj.subtitle!.value,
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
            margin: EdgeInsets.symmetric(vertical: 10.v),
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
