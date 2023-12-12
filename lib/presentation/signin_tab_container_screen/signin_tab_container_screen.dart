import 'controller/signin_tab_container_controller.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/signin_page/signin_page.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SigninTabContainerScreen extends GetWidget<SigninTabContainerController> {
  const SigninTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              _buildTabview(),
              SizedBox(
                height: 650.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    SigninPage(),
                    SigninPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 66.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDownPrimarycontainer,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 7.v,
          bottom: 7.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_sign_in".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 38.v,
      width: 326.h,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primaryContainer.withOpacity(1),
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.whiteA700,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            6.h,
          ),
          border: Border.all(
            color: theme.colorScheme.primaryContainer.withOpacity(1),
            width: 1.h,
          ),
        ),
        tabs: [
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 45.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.fillPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSeller1,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "lbl_seller".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 43.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.outlinePrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBuyer1,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "lbl_buyer".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildBuyerFrame({
    required String userImage,
    required String buyerLabel,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 43.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlinePrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 2.v,
            ),
            child: Text(
              buyerLabel,
              style: CustomTextStyles.labelLargePrimaryContainer.copyWith(
                color: theme.colorScheme.primaryContainer.withOpacity(1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
