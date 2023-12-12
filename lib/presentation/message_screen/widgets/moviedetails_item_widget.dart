import '../controller/message_controller.dart';
import '../models/moviedetails_item_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MoviedetailsItemWidget extends StatelessWidget {
  MoviedetailsItemWidget(
    this.moviedetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MoviedetailsItemModel moviedetailsItemModelObj;

  var controller = Get.find<MessageController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: moviedetailsItemModelObj.movieImage!.value,
            height: 60.adaptSize,
            width: 60.adaptSize,
            radius: BorderRadius.circular(
              30.h,
            ),
            margin: EdgeInsets.only(bottom: 17.v),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 6.v,
            bottom: 24.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  moviedetailsItemModelObj.movieTitle!.value,
                  style: CustomTextStyles.titleMediumInterOnPrimary,
                ),
              ),
              SizedBox(height: 6.v),
              Obx(
                () => Text(
                  moviedetailsItemModelObj.movieDescription!.value,
                  style: CustomTextStyles.bodyMediumInterGray600_1,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 7.v,
            bottom: 22.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 22.adaptSize,
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Obx(
                    () => Text(
                      moviedetailsItemModelObj.movieRating!.value,
                      style: CustomTextStyles.bodyLargeInter,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              Obx(
                () => Text(
                  moviedetailsItemModelObj.movieTime!.value,
                  style: CustomTextStyles.bodyMediumInterGray600_1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
