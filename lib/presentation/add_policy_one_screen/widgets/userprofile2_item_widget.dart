import '../controller/add_policy_one_controller.dart';
import '../models/userprofile2_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  var controller = Get.find<AddPolicyOneController>();

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
                imagePath: userprofile2ItemModelObj.imageClass!.value,
                height: 50.v,
                width: 44.h,
              ),
            ),
            SizedBox(height: 4.v),
            Obx(
              () => Text(
                userprofile2ItemModelObj.text!.value,
                style: theme.textTheme.labelLarge,
              ),
            ),
            Obx(
              () => Text(
                userprofile2ItemModelObj.text1!.value,
                style: CustomTextStyles.bodySmallGreenA700,
              ),
            ),
            Obx(
              () => Text(
                userprofile2ItemModelObj.text2!.value,
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
                      userprofile2ItemModelObj.text3!.value,
                      style: CustomTextStyles.bodySmallGray500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Obx(
                      () => Text(
                        userprofile2ItemModelObj.text4!.value,
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
                        userprofile2ItemModelObj.text5!.value,
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
