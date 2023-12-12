import '../delivery_in_progress_two_screen/widgets/orderdetailslist5_item_widget.dart';
import 'controller/delivery_in_progress_two_controller.dart';
import 'models/orderdetailslist5_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/profile_page/profile_page.dart';
import 'package:ecommerce_seller_app/presentation/search_package_page/search_package_page.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_seller_app/widgets/custom_bottom_bar.dart';
import 'package:ecommerce_seller_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DeliveryInProgressTwoScreen
    extends GetWidget<DeliveryInProgressTwoController> {
  const DeliveryInProgressTwoScreen({Key? key})
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
              SizedBox(height: 3.v),
              _buildInProgressRow(),
              SizedBox(height: 14.v),
              SizedBox(
                height: 960.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    _buildOrderIDColumn(),
                    _buildOrderDetailsList(),
                  ],
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
      leadingWidth: 57.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgFilter1Primarycontainer,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_today_s_delivery".tr,
      ),
      actions: [
        AppbarTrailingIconbuttonTwo(
          imagePath: ImageConstant.imgCalendar1Black900,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 12.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInProgressRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_in_progress".tr,
            style: theme.textTheme.titleMedium,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              bottom: 5.v,
            ),
            child: Text(
              "lbl_2000_items2".tr,
              style: CustomTextStyles.bodySmallSecondaryContainer,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: CustomIconButton(
              height: 20.adaptSize,
              width: 20.adaptSize,
              padding: EdgeInsets.all(4.h),
              decoration: IconButtonStyleHelper.fillGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgFrameGray900,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 2.v,
            ),
            child: CustomIconButton(
              height: 20.adaptSize,
              width: 20.adaptSize,
              child: CustomImageView(
                imagePath: ImageConstant.imgMenuGray900,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderIDColumn() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 240.v),
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 11.v,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "msg_order_id_aa4587v".tr,
                  style: CustomTextStyles.titleSmallGray40001,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Text(
                    "msg_status_completed".tr,
                    style: CustomTextStyles.bodySmallGreen400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 6.v),
            Text(
              "msg_electric_package".tr,
              style: CustomTextStyles.titleSmallGray900,
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
            Text(
              "lbl_50_00".tr,
              style: CustomTextStyles.titleSmallRed300,
            ),
            SizedBox(height: 2.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderDetailsList() {
    return Align(
      alignment: Alignment.center,
      child: Obx(
        () => ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 1.v,
            );
          },
          itemCount: controller.deliveryInProgressTwoModelObj.value
              .orderdetailslist5ItemList.value.length,
          itemBuilder: (context, index) {
            Orderdetailslist5ItemModel model = controller
                .deliveryInProgressTwoModelObj
                .value
                .orderdetailslist5ItemList
                .value[index];
            return Orderdetailslist5ItemWidget(
              model,
            );
          },
        ),
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
