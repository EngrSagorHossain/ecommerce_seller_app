import '../controller/notification_controller.dart';
import '../models/paymentnotificationlist_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PaymentnotificationlistItemWidget extends StatelessWidget {
  PaymentnotificationlistItemWidget(
    this.paymentnotificationlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PaymentnotificationlistItemModel paymentnotificationlistItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: paymentnotificationlistItemModelObj.paymentImage!.value,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
            margin: EdgeInsets.only(bottom: 22.v),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 209.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_10_00_payment_received2".tr,
                          style: CustomTextStyles.bodyMediumErrorContainer,
                        ),
                        TextSpan(
                          text: "lbl_afe457f12".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 9.v),
                Obx(
                  () => Text(
                    paymentnotificationlistItemModelObj.timeAgoText!.value,
                    style: CustomTextStyles.bodyMediumPrimary_1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
