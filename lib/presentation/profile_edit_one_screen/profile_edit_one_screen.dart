import 'controller/profile_edit_one_controller.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/core/utils/validation_functions.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_seller_app/widgets/custom_icon_button.dart';
import 'package:ecommerce_seller_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileEditOneScreen extends GetWidget<ProfileEditOneController> {
  ProfileEditOneScreen({Key? key})
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
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildArrowDown(),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 23.h,
                    vertical: 31.v,
                  ),
                  child: Column(
                    children: [
                      _buildFirstName1(),
                      SizedBox(height: 20.v),
                      _buildEmail(),
                      SizedBox(height: 20.v),
                      _buildPhoneNumber(),
                      SizedBox(height: 20.v),
                      _buildEight(),
                      SizedBox(height: 30.v),
                      _buildUpdateAccount(),
                      SizedBox(height: 5.v),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowDown() {
    return SizedBox(
      height: 183.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomAppBar(
            height: 123.v,
            leadingWidth: 66.h,
            leading: AppbarLeadingIconbutton(
              imagePath: ImageConstant.imgArrowDownPrimarycontainer,
              margin: EdgeInsets.only(
                left: 24.h,
                top: 16.v,
                bottom: 65.v,
              ),
            ),
            centerTitle: true,
            title: AppbarTitle(
              text: "msg_personal_details".tr,
              margin: EdgeInsets.only(
                top: 22.v,
                bottom: 73.v,
              ),
            ),
            styleType: Style.bgFill,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 120.adaptSize,
              width: 120.adaptSize,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse739,
                    height: 120.adaptSize,
                    width: 120.adaptSize,
                    radius: BorderRadius.circular(
                      60.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 2.h,
                      bottom: 17.v,
                    ),
                    child: CustomIconButton(
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      padding: EdgeInsets.all(4.h),
                      decoration: IconButtonStyleHelper.fillPrimary,
                      alignment: Alignment.bottomRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFrameWhiteA70020x20,
                      ),
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

  /// Section Widget
  Widget _buildFirstName() {
    return CustomTextFormField(
      width: 155.h,
      controller: controller.firstNameController,
      hintText: "lbl_jhony".tr,
      hintStyle: CustomTextStyles.bodyMediumPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildLastName() {
    return CustomTextFormField(
      width: 156.h,
      controller: controller.lastNameController,
      hintText: "lbl_deep".tr,
      hintStyle: CustomTextStyles.bodyMediumPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildFirstName1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildFirstName(),
        _buildLastName(),
      ],
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
      controller: controller.emailController,
      hintText: "msg_digital_mdfahad_gmail_com".tr,
      hintStyle: CustomTextStyles.bodyMediumPrimaryContainer,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return CustomTextFormField(
      controller: controller.phoneNumberController,
      hintText: "msg_88_01304_350205".tr,
      hintStyle: CustomTextStyles.bodyMediumPrimaryContainer,
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildEight() {
    return Container(
      width: 326.h,
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 10.v,
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
          Container(
            width: 254.h,
            margin: EdgeInsets.only(right: 46.h),
            child: Text(
              "msg_47_10_free_school".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumPrimaryContainer.copyWith(
                height: 1.71,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUpdateAccount() {
    return CustomElevatedButton(
      text: "lbl_update_account".tr,
    );
  }
}
