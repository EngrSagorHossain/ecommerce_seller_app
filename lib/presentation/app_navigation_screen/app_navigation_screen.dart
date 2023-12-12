import 'controller/app_navigation_controller.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Icon".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.iconScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Signin - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.signinTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home-Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeSettingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Shop details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.shopDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add product One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addProductOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search product".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchProductScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create package".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createPackageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product list".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.productListScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Package One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchPackageOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Package - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchPackageContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Order details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Delivery in queue".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.deliveryInQueueScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Delivery in queue One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.deliveryInQueueOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Package details Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.packageDetailsThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile edit".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileEditScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile edit One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileEditOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Message".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.messageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Empty inbox".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.emptyInboxScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verificationOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verificationTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Shop details One - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.shopDetailsOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "inbox".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.inboxScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Order Filter".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderFilterScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Date filter - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.dateFilterTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "category".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.categoryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit product".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProductScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "category One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.categoryOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "category Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.categoryTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product publish One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productPublishOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Delivery in progress".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.deliveryInProgressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Delivery in progress One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.deliveryInProgressOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Order Filter One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderFilterOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Package details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.packageDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "If code is wrong One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.ifCodeIsWrongOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "If code is wrong".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.ifCodeIsWrongScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add product".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addProductScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Shop details Two - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.shopDetailsTwoTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product publish".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.productPublishScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "category Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.categoryThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add card blank".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addCardBlankScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add card blank One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addCardBlankOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Card list".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cardListScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Card edit or delete".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.cardEditOrDeleteScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit Product One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProductOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "category Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.categoryFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Delivery in progress Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.deliveryInProgressTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification Seven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationSevenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Delivery completed".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.deliveryCompletedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Package details Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.packageDetailsFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification Six".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verificationSixScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product upload success One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productUploadSuccessOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add product Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addProductTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add policy Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addPolicyTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Successfull One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.successfullOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Successfull".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.successfullScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification Five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product upload success".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productUploadSuccessScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product publish Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productPublishThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Added policy".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addedPolicyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product publish Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productPublishTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add policy".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addPolicyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add delivery option One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addDeliveryOptionOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add policy One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addPolicyOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "2FA".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.faScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Added policy Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addedPolicyTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Added policy One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addedPolicyOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Added delivery option Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addedDeliveryOptionTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "2FA Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.faTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add delivery option".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addDeliveryOptionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add delivery option Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addDeliveryOptionTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product updated success One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productUpdatedSuccessOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "2FA One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.faOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Added delivery option One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addedDeliveryOptionOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Added delivery option".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addedDeliveryOptionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Shop create".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.shopCreateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product updated success".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productUpdatedSuccessScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product updated success Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productUpdatedSuccessTwoScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
