import 'controller/card_edit_or_delete_controller.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/profile_page/profile_page.dart';
import 'package:ecommerce_seller_app/presentation/search_package_page/search_package_page.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_seller_app/widgets/custom_bottom_bar.dart';
import 'package:ecommerce_seller_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CardEditOrDeleteScreen extends GetWidget<CardEditOrDeleteController> {
  const CardEditOrDeleteScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 33.v),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildCardEditOrDelete(),
                ),
              ),
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
        text: "lbl_card_list".tr,
      ),
      actions: [
        AppbarTrailingIconbuttonTwo(
          imagePath: ImageConstant.imgFrameWhiteA700,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 12.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCardEditOrDelete() {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 5.v,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillBlue50.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage17,
                        height: 15.v,
                        width: 21.h,
                        margin: EdgeInsets.symmetric(vertical: 4.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFrameBlueGray900,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7.v),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    "msg_acc_number_230_523".tr,
                    style: CustomTextStyles.bodyMediumGray900,
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    "msg_acc_type_corporate".tr,
                    style: CustomTextStyles.bodyMediumGray900,
                  ),
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    "msg_balance_5000_00".tr,
                    style: CustomTextStyles.titleSmallRed300,
                  ),
                ),
                SizedBox(height: 8.v),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          CustomTextFormField(
            controller: controller.hiddenATMNoController,
            hintText: "msg_852_159".tr,
            hintStyle: CustomTextStyles.bodyMediumGray900,
            textInputAction: TextInputAction.done,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(18.h, 16.v, 30.h, 16.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgImage18,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 50.v,
            ),
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 13.v, 11.h, 13.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgFrameBlueGray900,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 50.v,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 14.v),
            borderDecoration: TextFormFieldStyleHelper.fillBlueTL6,
            fillColor: appTheme.blue5004,
          ),
        ],
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
