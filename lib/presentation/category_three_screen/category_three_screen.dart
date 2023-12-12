import '../category_three_screen/widgets/productcategorylist1_item_widget.dart';
import 'controller/category_three_controller.dart';
import 'models/productcategorylist1_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/appbar_title.dart';
import 'package:ecommerce_seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CategoryThreeScreen extends GetWidget<CategoryThreeController> {
  const CategoryThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Padding(
          padding: EdgeInsets.only(top: 20.v),
          child: Obx(
            () => ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 1.v,
                );
              },
              itemCount: controller.categoryThreeModelObj.value
                  .productcategorylist1ItemList.value.length,
              itemBuilder: (context, index) {
                Productcategorylist1ItemModel model = controller
                    .categoryThreeModelObj
                    .value
                    .productcategorylist1ItemList
                    .value[index];
                return Productcategorylist1ItemWidget(
                  model,
                );
              },
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
        text: "lbl_add_category".tr,
      ),
    );
  }
}
