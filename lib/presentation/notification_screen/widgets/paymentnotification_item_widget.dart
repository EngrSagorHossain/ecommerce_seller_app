import '../controller/notification_controller.dart';
import '../models/paymentnotification_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PaymentnotificationItemWidget extends StatelessWidget {
  PaymentnotificationItemWidget(
    this.paymentnotificationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PaymentnotificationItemModel paymentnotificationItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: paymentnotificationItemModelObj.paymentImage!.value,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
            margin: EdgeInsets.only(bottom: 31.v),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            bottom: 8.v,
          ),
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
                  paymentnotificationItemModelObj.timeAgoText!.value,
                  style: CustomTextStyles.bodyMediumPrimary_1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
