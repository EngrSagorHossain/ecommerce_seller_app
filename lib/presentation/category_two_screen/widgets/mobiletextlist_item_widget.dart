import '../controller/category_two_controller.dart';
import '../models/mobiletextlist_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MobiletextlistItemWidget extends StatelessWidget {
  MobiletextlistItemWidget(
    this.mobiletextlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MobiletextlistItemModel mobiletextlistItemModelObj;

  var controller = Get.find<CategoryTwoController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 44.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          height: 57.v,
          width: 44.h,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse1397,
                height: 40.adaptSize,
                width: 40.adaptSize,
                radius: BorderRadius.circular(
                  20.h,
                ),
                alignment: Alignment.topLeft,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Obx(
                    () => Text(
                      mobiletextlistItemModelObj.mobileText!.value,
                      style: CustomTextStyles.bodySmallGray8000210,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.v),
                child: CustomIconButton(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  padding: EdgeInsets.all(1.h),
                  decoration: IconButtonStyleHelper.fillWhiteA,
                  alignment: Alignment.bottomRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgClosePink100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
