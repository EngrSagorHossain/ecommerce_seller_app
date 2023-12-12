import '../controller/edit_product_one_controller.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  var controller = Get.find<EditProductOneController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 57.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgProfile,
                height: 47.v,
                width: 43.h,
              ),
              SizedBox(height: 2.v),
              Obx(
                () => Text(
                  userprofilelistItemModelObj.chanachur!.value,
                  style: CustomTextStyles.bodySmallGray8000210,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
