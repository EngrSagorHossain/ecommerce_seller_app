import '../controller/category_two_controller.dart';
import '../models/productcardlist1_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productcardlist1ItemWidget extends StatelessWidget {
  Productcardlist1ItemWidget(
    this.productcardlist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcardlist1ItemModel productcardlist1ItemModelObj;

  var controller = Get.find<CategoryTwoController>();

  @override
  Widget build(BuildContext context) {
    return Row(
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
                  productcardlist1ItemModelObj.title!.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Obx(
                () => Text(
                  productcardlist1ItemModelObj.subtitle!.value,
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
    );
  }
}
