import '../controller/delivery_in_progress_controller.dart';
import '../models/orderdetailslist3_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Orderdetailslist3ItemWidget extends StatelessWidget {
  Orderdetailslist3ItemWidget(
    this.orderdetailslist3ItemModelObj, {
    Key? key,
    this.onTapTxtPackageText,
  }) : super(
          key: key,
        );

  Orderdetailslist3ItemModel orderdetailslist3ItemModelObj;

  var controller = Get.find<DeliveryInProgressController>();

  VoidCallback? onTapTxtPackageText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              top: 1.v,
              right: 7.h,
              bottom: 11.v,
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
                                orderdetailslist3ItemModelObj.orderImage!.value,
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
                                orderdetailslist3ItemModelObj.moreImages!.value,
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
                                imagePath: orderdetailslist3ItemModelObj
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
                                  imagePath: orderdetailslist3ItemModelObj
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
                                      orderdetailslist3ItemModelObj
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
            padding: EdgeInsets.only(
              left: 7.h,
              bottom: 11.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    orderdetailslist3ItemModelObj.orderText!.value,
                    style: CustomTextStyles.titleSmallMontserratGray40004,
                  ),
                ),
                SizedBox(height: 8.v),
                GestureDetector(
                  onTap: () {
                    onTapTxtPackageText!.call();
                  },
                  child: Obx(
                    () => Text(
                      orderdetailslist3ItemModelObj.packageText!.value,
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
                    orderdetailslist3ItemModelObj.priceText!.value,
                    style: CustomTextStyles.titleSmallRed300,
                  ),
                ),
                SizedBox(height: 14.v),
                CustomElevatedButton(
                  height: 31.v,
                  width: 156.h,
                  text: "lbl_in_progress".tr,
                  buttonStyle: CustomButtonStyles.fillOrangeA,
                  buttonTextStyle: theme.textTheme.bodyMedium!,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}