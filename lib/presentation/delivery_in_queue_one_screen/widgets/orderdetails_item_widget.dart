import '../controller/delivery_in_queue_one_controller.dart';
import '../models/orderdetails_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrderdetailsItemWidget extends StatelessWidget {
  OrderdetailsItemWidget(
    this.orderdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderdetailsItemModel orderdetailsItemModelObj;

  var controller = Get.find<DeliveryInQueueOneController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 11.v,
        ),
        decoration: AppDecoration.fillGray5002,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text(
                    orderdetailsItemModelObj.orderID!.value,
                    style: CustomTextStyles.titleSmallGray40001,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Obx(
                    () => Text(
                      orderdetailsItemModelObj.status!.value,
                      style: CustomTextStyles.bodySmallRed300,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 6.v),
            Obx(
              () => Text(
                orderdetailsItemModelObj.electricPackage!.value,
                style: CustomTextStyles.titleSmallGray900,
              ),
            ),
            SizedBox(height: 2.v),
            RichText(
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
            SizedBox(height: 4.v),
            Obx(
              () => Text(
                orderdetailsItemModelObj.price!.value,
                style: CustomTextStyles.titleSmallRed300,
              ),
            ),
            SizedBox(height: 2.v),
          ],
        ),
      ),
    );
  }
}
