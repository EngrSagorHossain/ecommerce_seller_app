import 'controller/icon_controller.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class IconScreen extends GetWidget<IconController> {
  const IconScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 26.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  right: 62.h,
                ),
                child: _buildHomeRow(
                  primaryImage: ImageConstant.imgHome,
                  secondaryImage: ImageConstant.imgFrame,
                  cartImage: ImageConstant.imgCart,
                  cartImageSmall: ImageConstant.imgCartBlueGray40002,
                  frameImage: ImageConstant.imgFrameBlueGray40002,
                  searchImage: ImageConstant.imgSearch,
                  frameImage1: ImageConstant.imgFrameBlueGray4000220x20,
                  frameImage2: ImageConstant.imgFrame20x20,
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  right: 62.h,
                ),
                child: _buildHomeRow(
                  primaryImage: ImageConstant.imgFramePrimary,
                  secondaryImage: ImageConstant.imgFramePrimary20x20,
                  cartImage: ImageConstant.imgCartPrimary,
                  cartImageSmall: ImageConstant.imgCartPrimary20x19,
                  frameImage: ImageConstant.imgFramePrimary22x22,
                  searchImage: ImageConstant.imgSearchPrimary,
                  frameImage1: ImageConstant.imgFrame1,
                  frameImage2: ImageConstant.imgFrame2,
                ),
              ),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  right: 136.h,
                ),
                child: _buildCartRow(
                  image1: ImageConstant.imgFrame3,
                  image2: ImageConstant.imgFrame4,
                  image3: ImageConstant.imgAdd1,
                  image4: ImageConstant.imgAdd2,
                  image5: ImageConstant.imgCheckList2,
                ),
              ),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  right: 136.h,
                ),
                child: _buildCartRow(
                  image1: ImageConstant.imgFrame5,
                  image2: ImageConstant.imgFrame6,
                  image3: ImageConstant.imgAdd11,
                  image4: ImageConstant.imgAdd12,
                  image5: ImageConstant.imgCheckList11,
                ),
              ),
              Spacer(
                flex: 22,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFrameBlack900,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              SizedBox(height: 28.v),
              CustomImageView(
                imagePath: ImageConstant.imgCheckList1,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(left: 151.h),
              ),
              SizedBox(height: 37.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: CustomIconButton(
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  decoration: IconButtonStyleHelper.outlinePrimaryContainer,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMynauiEdit,
                  ),
                ),
              ),
              Spacer(
                flex: 77,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildHomeRow({
    required String primaryImage,
    required String secondaryImage,
    required String cartImage,
    required String cartImageSmall,
    required String frameImage,
    required String searchImage,
    required String frameImage1,
    required String frameImage2,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: primaryImage,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 1.v),
        ),
        CustomImageView(
          imagePath: secondaryImage,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 12.h,
            top: 1.v,
            bottom: 1.v,
          ),
        ),
        CustomImageView(
          imagePath: cartImage,
          height: 19.adaptSize,
          width: 19.adaptSize,
          margin: EdgeInsets.only(
            left: 25.h,
            top: 1.v,
            bottom: 1.v,
          ),
        ),
        CustomImageView(
          imagePath: cartImageSmall,
          height: 20.v,
          width: 19.h,
          margin: EdgeInsets.only(
            left: 12.h,
            top: 1.v,
            bottom: 1.v,
          ),
        ),
        CustomImageView(
          imagePath: frameImage,
          height: 22.adaptSize,
          width: 22.adaptSize,
          margin: EdgeInsets.only(left: 25.h),
        ),
        CustomImageView(
          imagePath: searchImage,
          height: 22.adaptSize,
          width: 22.adaptSize,
          margin: EdgeInsets.only(left: 10.h),
        ),
        CustomImageView(
          imagePath: frameImage1,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 29.h,
            top: 1.v,
            bottom: 1.v,
          ),
        ),
        CustomImageView(
          imagePath: frameImage2,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 1.v,
            bottom: 1.v,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildCartRow({
    required String image1,
    required String image2,
    required String image3,
    required String image4,
    required String image5,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: image1,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(top: 1.v),
        ),
        CustomImageView(
          imagePath: image2,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 9.h,
            top: 1.v,
          ),
        ),
        Spacer(
          flex: 50,
        ),
        CustomImageView(
          imagePath: image3,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
        Spacer(
          flex: 50,
        ),
        CustomImageView(
          imagePath: image4,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(top: 1.v),
        ),
        CustomImageView(
          imagePath: image5,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 29.h,
            top: 1.v,
          ),
        ),
      ],
    );
  }
}
