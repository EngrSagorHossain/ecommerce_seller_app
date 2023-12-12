import 'controller/shop_create_controller.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/profile_page/profile_page.dart';
import 'package:ecommerce_seller_app/presentation/search_package_page/search_package_page.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_seller_app/widgets/custom_bottom_bar.dart';
import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ShopCreateScreen extends GetWidget<ShopCreateController> {
  const ShopCreateScreen({Key? key})
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
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup,
                height: 165.v,
                width: 162.h,
              ),
              SizedBox(height: 30.v),
              Text(
                "msg_shop_create_successfully".tr,
                style: CustomTextStyles.titleLargeBlack900,
              ),
              SizedBox(height: 9.v),
              Text(
                "msg_now_you_can_upload".tr,
                style: CustomTextStyles.bodyMediumGray600,
              ),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                height: 65.v,
                text: "lbl_go_to_home".tr,
                buttonTextStyle: CustomTextStyles.titleLargeWhiteA700,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
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
        text: "lbl_shop_create".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Add11:
        return AppRoutes.searchPackagePage;
      case BottomBarEnum.Add2:
        return "/";
      case BottomBarEnum.Checklist2:
        return "/";
      case BottomBarEnum.Search:
        return "/";
      case BottomBarEnum.Framebluegray4000220x20:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.searchPackagePage:
        return SearchPackagePage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
