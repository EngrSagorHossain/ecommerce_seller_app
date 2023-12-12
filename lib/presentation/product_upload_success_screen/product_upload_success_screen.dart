import 'controller/product_upload_success_controller.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_seller_app/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProductUploadSuccessScreen
    extends GetWidget<ProductUploadSuccessController> {
  const ProductUploadSuccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 49.h,
            vertical: 9.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgApproveBadge,
                height: 176.adaptSize,
                width: 176.adaptSize,
              ),
              Container(
                height: 3.v,
                width: 100.h,
                decoration: BoxDecoration(
                  color: appTheme.gray8007f,
                  borderRadius: BorderRadius.circular(
                    50.h,
                  ),
                ),
              ),
              SizedBox(height: 26.v),
              Container(
                width: 194.h,
                margin: EdgeInsets.only(
                  left: 42.h,
                  right: 39.h,
                ),
                child: Text(
                  "msg_updated_successfully".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineLarge!.copyWith(
                    height: 1.17,
                  ),
                ),
              ),
              SizedBox(height: 4.v),
              SizedBox(
                width: 275.h,
                child: Text(
                  "msg_now_your_products".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumGray600.copyWith(
                    height: 1.71,
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              CustomOutlinedButton(
                text: "msg_got_to_dashboard".tr,
                margin: EdgeInsets.symmetric(horizontal: 8.h),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDownPrimarycontainer,
        margin: EdgeInsets.fromLTRB(24.h, 7.v, 309.h, 7.v),
      ),
    );
  }
}
