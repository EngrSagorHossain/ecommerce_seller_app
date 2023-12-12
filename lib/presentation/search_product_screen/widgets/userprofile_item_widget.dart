import '../controller/search_product_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
    this.onTapUserProfileEditButton,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<SearchProductController>();

  VoidCallback? onTapUserProfileEditButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: userprofileItemModelObj.userImage!.value,
              height: 44.adaptSize,
              width: 44.adaptSize,
              radius: BorderRadius.circular(
                22.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 2.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    userprofileItemModelObj.userName!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 2.v),
                Obx(
                  () => Text(
                    userprofileItemModelObj.userAmount!.value,
                    style: CustomTextStyles.bodySmallRed300_1,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            height: 24.v,
            width: 54.h,
            text: "lbl_edit".tr,
            margin: EdgeInsets.symmetric(vertical: 10.v),
            rightIcon: Container(
              margin: EdgeInsets.only(left: 4.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(
                  7.h,
                ),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgMynauiEditWhiteA700,
                height: 14.adaptSize,
                width: 14.adaptSize,
              ),
            ),
            buttonTextStyle: CustomTextStyles.bodySmallWhiteA70010,
            onPressed: () {
              onTapUserProfileEditButton!.call();
            },
          ),
        ],
      ),
    );
  }
}
