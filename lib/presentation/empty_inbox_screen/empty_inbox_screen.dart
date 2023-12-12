import 'controller/empty_inbox_controller.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EmptyInboxScreen extends GetWidget<EmptyInboxController> {
  const EmptyInboxScreen({Key? key})
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
            horizontal: 35.h,
            vertical: 30.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup1000006152,
                height: 296.adaptSize,
                width: 296.adaptSize,
              ),
              SizedBox(height: 53.v),
              SizedBox(
                height: 56.v,
                width: 245.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "lbl_no_message_yet".tr,
                          style: theme.textTheme.headlineMedium,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "msg_its_seens_no_message".tr,
                        style: CustomTextStyles.bodyMediumGray600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 78.v),
              Text(
                "msg_start_a_conversation".tr,
                style: theme.textTheme.bodyLarge,
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
      leadingWidth: 67.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDownPrimarycontainer,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 7.v,
          bottom: 7.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_inbox".tr,
      ),
    );
  }
}
