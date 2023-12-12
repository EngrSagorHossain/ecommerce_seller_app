import 'controller/inbox_controller.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';
import 'package:ecommerce_seller_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InboxScreen extends GetWidget<InboxController> {
  const InboxScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 28.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 18.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 169.h,
                    right: 1.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 8.v,
                  ),
                  decoration: AppDecoration.fillBlue100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.v),
                      Text(
                        "msg_is_anyone_there".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(right: 1.h),
                child: _buildTimeRow(
                  timeText: "lbl_10_32_am".tr,
                ),
              ),
              SizedBox(height: 18.v),
              _buildYesHowCanIHelpYouSir(),
              SizedBox(height: 10.v),
              _buildTimeRow(
                timeText: "lbl_10_32_am".tr,
              ),
              SizedBox(height: 18.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 158.h,
                    right: 1.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.fillBlue100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.v),
                      Text(
                        "msg_is_iphone_15_pro".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(right: 1.h),
                child: _buildTimeRow(
                  timeText: "lbl_10_32_am".tr,
                ),
              ),
              SizedBox(height: 18.v),
              _buildYesSirAvailable(),
              SizedBox(height: 6.v),
              _buildWeHaveTheAuthorized(),
              SizedBox(height: 10.v),
              _buildTimeRow(
                timeText: "lbl_10_32_am".tr,
              ),
              SizedBox(height: 18.v),
              _buildGreat(),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(left: 154.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.fillBlue100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 1.v),
                      Text(
                        "msg_is_home_delivery".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              _buildTimeRow(
                timeText: "lbl_10_32_am".tr,
              ),
              SizedBox(height: 18.v),
              _buildMessageEight(),
              SizedBox(height: 10.v),
              _buildTimeRow(
                timeText: "lbl_10_32_am".tr,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildMessage1(),
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
        text: "lbl_harry_potter_f".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildYesHowCanIHelpYouSir() {
    return CustomElevatedButton(
      height: 38.v,
      width: 171.h,
      text: "msg_yes_how_can_i_help".tr,
      buttonStyle: CustomButtonStyles.fillBlue,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildYesSirAvailable() {
    return CustomElevatedButton(
      height: 38.v,
      width: 114.h,
      text: "msg_yes_sir_available".tr,
      buttonStyle: CustomButtonStyles.fillBlue,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildWeHaveTheAuthorized() {
    return CustomElevatedButton(
      height: 38.v,
      width: 211.h,
      text: "msg_we_have_the_authorized".tr,
      buttonStyle: CustomButtonStyles.fillBlue,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildGreat() {
    return CustomElevatedButton(
      height: 38.v,
      width: 53.h,
      text: "lbl_great".tr,
      buttonStyle: CustomButtonStyles.fillBlueTL19,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
      alignment: Alignment.centerRight,
    );
  }

  /// Section Widget
  Widget _buildMessageEight() {
    return Padding(
      padding: EdgeInsets.only(right: 48.h),
      child: CustomTextFormField(
        controller: controller.messageEightController,
        hintText: "msg_we_delivery_products".tr,
        contentPadding: EdgeInsets.all(10.h),
        borderDecoration: TextFormFieldStyleHelper.fillBlue,
        fillColor: appTheme.blue5002,
      ),
    );
  }

  /// Section Widget
  Widget _buildMessage() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: CustomTextFormField(
          controller: controller.messageController,
          hintText: "lbl_message".tr,
          hintStyle: CustomTextStyles.bodyLargeBluegray40001,
          textInputAction: TextInputAction.done,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 14.v, 15.h, 14.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgSend1,
              height: 16.adaptSize,
              width: 16.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 44.v,
          ),
          contentPadding: EdgeInsets.only(
            left: 22.h,
            top: 10.v,
            bottom: 10.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillTeal,
          fillColor: appTheme.teal50,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMessage1() {
    return Padding(
      padding: EdgeInsets.only(
        left: 27.h,
        right: 24.h,
        bottom: 16.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCloseBlueGray40001,
            height: 14.v,
            width: 8.h,
            margin: EdgeInsets.symmetric(vertical: 15.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage,
            height: 14.adaptSize,
            width: 14.adaptSize,
            margin: EdgeInsets.only(
              left: 21.h,
              top: 15.v,
              bottom: 15.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgOverflowMenu,
            height: 14.v,
            width: 17.h,
            margin: EdgeInsets.only(
              left: 20.h,
              top: 15.v,
              bottom: 15.v,
            ),
          ),
          _buildMessage(),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTimeRow({required String timeText}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.6,
          child: Text(
            timeText,
            style: CustomTextStyles.bodyMediumInterGray600.copyWith(
              color: appTheme.gray600.withOpacity(0.56),
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 6.v,
          width: 14.h,
          margin: EdgeInsets.only(
            left: 5.h,
            top: 3.v,
            bottom: 6.v,
          ),
        ),
      ],
    );
  }
}
