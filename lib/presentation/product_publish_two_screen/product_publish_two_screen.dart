import '../product_publish_two_screen/widgets/productcard7_item_widget.dart';
import 'controller/product_publish_two_controller.dart';
import 'models/productcard7_item_model.dart';
import 'package:country_pickers/country.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_seller_app/widgets/custom_drop_down.dart';
import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_seller_app/widgets/custom_icon_button.dart';
import 'package:ecommerce_seller_app/widgets/custom_phone_number.dart';
import 'package:ecommerce_seller_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProductPublishTwoScreen extends GetWidget<ProductPublishTwoController> {
  const ProductPublishTwoScreen({Key? key})
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
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 9.v),
          child: Column(
            children: [
              SizedBox(height: 7.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      right: 19.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        _buildItemsAddedColumn(),
                        SizedBox(height: 28.v),
                        _buildReturnPolicyColumn(),
                        SizedBox(height: 22.v),
                        _buildDeliveryOptionColumn(),
                        SizedBox(height: 19.v),
                        _buildNameColumn(),
                        SizedBox(height: 20.v),
                        _buildGroup338(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildPublishPackageButton(),
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
        text: "lbl_create_packages".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCardList() {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "lbl_05_items_added".tr,
              style: CustomTextStyles.titleMediumPrimaryContainer_1,
            ),
          ),
          SizedBox(height: 7.v),
          SizedBox(
            height: 144.v,
            child: Obx(
              () => ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 32.h,
                  );
                },
                itemCount: controller.productPublishTwoModelObj.value
                    .productcard7ItemList.value.length,
                itemBuilder: (context, index) {
                  Productcard7ItemModel model = controller
                      .productPublishTwoModelObj
                      .value
                      .productcard7ItemList
                      .value[index];
                  return Productcard7ItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildItemsAddedColumn() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildProductCardList(),
          SizedBox(height: 27.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgProfile,
                      height: 51.v,
                      width: 44.h,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "lbl_ice_cream".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      "lbl_10_00".tr,
                      style: CustomTextStyles.bodySmallGreenA700,
                    ),
                    Text(
                      "lbl_left_234".tr,
                      style: CustomTextStyles.bodySmallRed300_1,
                    ),
                    SizedBox(height: 7.v),
                    Container(
                      width: 54.h,
                      margin: EdgeInsets.symmetric(horizontal: 3.h),
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      decoration: AppDecoration.outlineGray40002.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder6,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "lbl2".tr,
                            style: CustomTextStyles.bodySmallGray500,
                          ),
                          Text(
                            "lbl_1".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                          Text(
                            "lbl3".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 35.h,
                    top: 7.v,
                    bottom: 67.v,
                  ),
                  child: Column(
                    children: [
                      CustomIconButton(
                        height: 44.adaptSize,
                        width: 44.adaptSize,
                        padding: EdgeInsets.all(13.h),
                        decoration: IconButtonStyleHelper.fillGrayTL22,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFramePrimary44x44,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        "lbl_add_more".tr,
                        style: CustomTextStyles.bodySmallGray50001,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReturnPolicyColumn() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Row(
              children: [
                Text(
                  "lbl_return_policy".tr,
                  style: theme.textTheme.titleSmall,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgReturnBox11,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    left: 6.h,
                    bottom: 3.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: CustomDropDown(
              icon: Container(
                margin: EdgeInsets.fromLTRB(30.h, 16.v, 13.h, 16.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
              hintText: "lbl_add_policy".tr,
              items: controller
                  .productPublishTwoModelObj.value.dropdownItemList!.value,
              onChanged: (value) {
                controller.onSelected(value);
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDeliveryOptionColumn() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "lbl_delivery_option".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFastDelivery1,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  margin: EdgeInsets.only(left: 10.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: CustomDropDown(
              icon: Container(
                margin: EdgeInsets.fromLTRB(30.h, 16.v, 13.h, 16.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
              hintText: "msg_add_delivery_option".tr,
              items: controller
                  .productPublishTwoModelObj.value.dropdownItemList1!.value,
              onChanged: (value) {
                controller.onSelected1(value);
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNameColumn() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "lbl_package_name".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: CustomTextFormField(
              controller: controller.nameController,
              hintText: "msg_electric_package2".tr,
              hintStyle: theme.textTheme.titleSmall!,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 19.h,
                vertical: 15.v,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup338() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_package_price".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 4.v),
        Padding(
          padding: EdgeInsets.only(left: 13.h),
          child: Obx(
            () => CustomPhoneNumber(
              country: controller.selectedCountry.value,
              controller: controller.phoneNumberController,
              onTap: (Country value) {
                controller.selectedCountry.value = value;
              },
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPublishPackageButton() {
    return CustomElevatedButton(
      text: "lbl_publish_package".tr,
      margin: EdgeInsets.only(
        left: 25.h,
        right: 22.h,
        bottom: 41.v,
      ),
    );
  }
}
