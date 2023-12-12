import '../controller/delivery_completed_controller.dart';
import '../models/completedlist_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CompletedlistItemWidget extends StatelessWidget {
  CompletedlistItemWidget(
    this.completedlistItemModelObj, {
    Key? key,
    this.onTapTxtPackageName,
  }) : super(
          key: key,
        );

  CompletedlistItemModel completedlistItemModelObj;

  var controller = Get.find<DeliveryCompletedController>();

  VoidCallback? onTapTxtPackageName;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                top: 1.v,
                right: 7.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 4.h,
                vertical: 5.v,
              ),
              decoration: AppDecoration.fillBlueAC.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 145.h,
                    margin: EdgeInsets.symmetric(horizontal: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 69.adaptSize,
                          width: 69.adaptSize,
                          padding: EdgeInsets.all(5.h),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder6,
                          ),
                          child: Obx(
                            () => CustomImageView(
                              imagePath:
                                  completedlistItemModelObj.orderImage!.value,
                              height: 58.adaptSize,
                              width: 58.adaptSize,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                        Container(
                          height: 69.adaptSize,
                          width: 69.adaptSize,
                          padding: EdgeInsets.all(5.h),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder6,
                          ),
                          child: Obx(
                            () => CustomImageView(
                              imagePath:
                                  completedlistItemModelObj.moreImages!.value,
                              height: 58.adaptSize,
                              width: 58.adaptSize,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Container(
                    width: 146.h,
                    margin: EdgeInsets.only(right: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 69.v,
                          width: 75.h,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  height: 69.adaptSize,
                                  width: 69.adaptSize,
                                  margin: EdgeInsets.only(left: 1.h),
                                  decoration: BoxDecoration(
                                    color: appTheme.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                      6.h,
                                    ),
                                  ),
                                ),
                              ),
                              Obx(
                                () => CustomImageView(
                                  imagePath: completedlistItemModelObj
                                      .moreImages1!.value,
                                  height: 40.v,
                                  width: 75.h,
                                  alignment: Alignment.topCenter,
                                  margin: EdgeInsets.only(top: 12.v),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: appTheme.whiteA700,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder6,
                          ),
                          child: Container(
                            height: 69.adaptSize,
                            width: 69.adaptSize,
                            decoration: AppDecoration.fillWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Obx(
                                  () => CustomImageView(
                                    imagePath: completedlistItemModelObj
                                        .moreImages2!.value,
                                    height: 47.v,
                                    width: 62.h,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 11.h,
                                      vertical: 24.v,
                                    ),
                                    decoration: AppDecoration
                                        .fillPrimaryContainer1
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder6,
                                    ),
                                    child: Obx(
                                      () => Text(
                                        completedlistItemModelObj
                                            .moreText!.value,
                                        style:
                                            CustomTextStyles.bodySmallWhiteA700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      completedlistItemModelObj.orderID!.value,
                      style: CustomTextStyles.titleSmallMontserratGray40004,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  GestureDetector(
                    onTap: () {
                      onTapTxtPackageName!.call();
                    },
                    child: Obx(
                      () => Text(
                        completedlistItemModelObj.packageName!.value,
                        style: CustomTextStyles.titleSmallGray900,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 138.h,
                    child: RichText(
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
                  ),
                  SizedBox(height: 4.v),
                  Obx(
                    () => Text(
                      completedlistItemModelObj.price!.value,
                      style: CustomTextStyles.titleSmallRed300,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  CustomElevatedButton(
                    height: 31.v,
                    width: 156.h,
                    text: "lbl_completed".tr,
                    buttonStyle: CustomButtonStyles.fillGreen,
                    buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
