import 'controller/add_product_two_controller.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/core/utils/validation_functions.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_seller_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddProductTwoScreen extends GetWidget<AddProductTwoController> {
  AddProductTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 9.v),
            child: Column(
              children: [
                SizedBox(height: 10.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 24.h,
                        right: 24.h,
                        bottom: 5.v,
                      ),
                      child: Column(
                        children: [
                          _buildProductName(),
                          SizedBox(height: 15.v),
                          _buildProductDetails(),
                          SizedBox(height: 17.v),
                          _buildAddProductImage(),
                          SizedBox(height: 20.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              height: 57.adaptSize,
                              width: 57.adaptSize,
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgRectangle4374,
                                    height: 57.adaptSize,
                                    width: 57.adaptSize,
                                    radius: BorderRadius.circular(
                                      8.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgFrameRed500,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(
                                      top: 3.v,
                                      right: 4.h,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 19.v),
                          _buildAddOnCategory(),
                          SizedBox(height: 15.v),
                          _buildZipcode(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildUpdate(),
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
        text: "lbl_add_a_products".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildProductName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_product_name".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: controller.nameController,
          hintText: "lbl_potato_chips".tr,
          hintStyle: theme.textTheme.titleSmall!,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 15.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProductDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_product_details".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: controller.phoneController,
          hintText: "msg_headphone_buds".tr,
          hintStyle: CustomTextStyles.bodyMediumGray80002,
          textInputType: TextInputType.phone,
          validator: (value) {
            if (!isValidPhone(value)) {
              return "err_msg_please_enter_valid_phone_number".tr;
            }
            return null;
          },
          maxLines: 3,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddProductImage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_add_product_image".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 5.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.outlineBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 9.h,
                  top: 9.v,
                  bottom: 5.v,
                ),
                child: Text(
                  "lbl_choose_image".tr,
                  style: CustomTextStyles.bodyMediumGray40003,
                ),
              ),
              CustomElevatedButton(
                height: 36.v,
                width: 91.h,
                text: "lbl_browse".tr,
                buttonStyle: CustomButtonStyles.fillGray,
                buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddOnCategory() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_add_on_category".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 5.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 14.v,
          ),
          decoration: AppDecoration.outlineBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "lbl_electronics".tr,
                style: theme.textTheme.titleSmall,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPrice() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 7.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_price".tr,
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 7.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.outlineBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgFrameBlack90016x16,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(
                      left: 1.h,
                      top: 7.v,
                      bottom: 7.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: SizedBox(
                      height: 30.v,
                      child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 3.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_12_00".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildQuantity() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_quantity".tr,
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 6.v),
            CustomTextFormField(
              width: 155.h,
              controller: controller.zipcodeController,
              hintText: "lbl_1213".tr,
              hintStyle: theme.textTheme.titleMedium!,
              textInputAction: TextInputAction.done,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildZipcode() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildPrice(),
        _buildQuantity(),
      ],
    );
  }

  /// Section Widget
  Widget _buildUpdate() {
    return CustomElevatedButton(
      text: "lbl_update".tr,
      margin: EdgeInsets.only(
        left: 25.h,
        right: 23.h,
        bottom: 47.v,
      ),
      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
    );
  }
}
