import '../add_policy_two_screen/widgets/productcard4_item_widget.dart';
import 'controller/add_policy_two_controller.dart';
import 'models/productcard4_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_seller_app/widgets/custom_checkbox_button.dart';
import 'package:ecommerce_seller_app/widgets/custom_drop_down.dart';
import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_seller_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddPolicyTwoScreen extends GetWidget<AddPolicyTwoController> {
  const AddPolicyTwoScreen({Key? key})
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
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 7.v),
            child: Column(
              children: [
                _buildItemsAdded(),
                SizedBox(height: 28.v),
                _buildReturnPolicy(),
                SizedBox(height: 10.v),
                _buildPublishPackage(),
              ],
            ),
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
        text: "lbl_create_packages".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildItemsAdded() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
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
                padding: EdgeInsets.only(left: 2.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 32.h,
                  );
                },
                itemCount: controller.addPolicyTwoModelObj.value
                    .productcard4ItemList.value.length,
                itemBuilder: (context, index) {
                  Productcard4ItemModel model = controller.addPolicyTwoModelObj
                      .value.productcard4ItemList.value[index];
                  return Productcard4ItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 27.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
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
  Widget _buildReturnPolicy() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 9.h),
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
            padding: EdgeInsets.only(left: 9.h),
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
              items:
                  controller.addPolicyTwoModelObj.value.dropdownItemList!.value,
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
  Widget _buildPublishPackage() {
    return SizedBox(
      height: 305.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 25.h,
                top: 9.v,
                right: 19.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_package_name".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Container(
                    width: 326.h,
                    margin: EdgeInsets.only(left: 4.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 18.h,
                      vertical: 12.v,
                    ),
                    decoration: AppDecoration.outlineBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        Text(
                          "msg_electric_package2".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 19.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_package_price".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Container(
                    margin: EdgeInsets.only(left: 4.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.outlineBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Row(
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
                            left: 9.h,
                            top: 3.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "lbl_100_00".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 42.v),
                  CustomElevatedButton(
                    text: "lbl_publish_package".tr,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 29.h,
                vertical: 25.v,
              ),
              decoration: AppDecoration.outlineBlack900.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL40,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => CustomCheckboxButton(
                      text: "msg_no_return_option".tr,
                      value: controller.noReturnOption.value,
                      onChange: (value) {
                        controller.noReturnOption.value = value;
                      },
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(
                            top: 3.v,
                            bottom: 28.v,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                            border: Border.all(
                              color: appTheme.blueGray40002,
                              width: 1.h,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 276.h,
                            margin: EdgeInsets.only(left: 11.h),
                            child: Text(
                              "msg_return_by_36_hours".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleMedium!.copyWith(
                                height: 1.50,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Obx(
                    () => CustomCheckboxButton(
                      text: "msg_return_by_12_with".tr,
                      value: controller.returnbywithNOfee.value,
                      onChange: (value) {
                        controller.returnbywithNOfee.value = value;
                      },
                    ),
                  ),
                  SizedBox(height: 16.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
