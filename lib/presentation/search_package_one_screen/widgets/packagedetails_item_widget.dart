import '../controller/search_package_one_controller.dart';
import '../models/packagedetails_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PackagedetailsItemWidget extends StatelessWidget {
  PackagedetailsItemWidget(
    this.packagedetailsItemModelObj, {
    Key? key,
    this.onTapPackageEdit1,
  }) : super(
          key: key,
        );

  PackagedetailsItemModel packagedetailsItemModelObj;

  var controller = Get.find<SearchPackageOneController>();

  VoidCallback? onTapPackageEdit1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 7.h),
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
                        child: CustomImageView(
                          imagePath: ImageConstant.img5d02da5df552836,
                          height: 58.adaptSize,
                          width: 58.adaptSize,
                          alignment: Alignment.center,
                        ),
                      ),
                      Container(
                        height: 69.adaptSize,
                        width: 69.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder6,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgHuaweiFreebuds,
                          height: 58.adaptSize,
                          width: 58.adaptSize,
                          alignment: Alignment.center,
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
                            CustomImageView(
                              imagePath: ImageConstant.imgDCc1,
                              height: 40.v,
                              width: 75.h,
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: 12.v),
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
                              CustomImageView(
                                imagePath: ImageConstant.img9447441f632825,
                                height: 47.v,
                                width: 62.h,
                                alignment: Alignment.center,
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
                                      packagedetailsItemModelObj
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
              top: 4.v,
            ),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        packagedetailsItemModelObj.packageName!.value,
                        style: CustomTextStyles.titleSmallGray900,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    SizedBox(
                      width: 147.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_details".tr,
                              style: CustomTextStyles.bodySmall11,
                            ),
                            TextSpan(
                              text: "msg_buds_headphone_speaker".tr,
                              style: CustomTextStyles.bodySmallGray60001,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Obx(
                      () => Text(
                        packagedetailsItemModelObj.packagePrice!.value,
                        style: CustomTextStyles.titleSmallRed300,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 37.v),
                CustomElevatedButton(
                  height: 31.v,
                  width: 156.h,
                  text: "lbl_package_edit".tr,
                  rightIcon: Container(
                    margin: EdgeInsets.only(left: 4.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMynauiEditWhiteA700,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL5,
                  buttonTextStyle: CustomTextStyles.bodySmallWhiteA700_1,
                  onPressed: () {
                    onTapPackageEdit1!.call();
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
