import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/category_four_screen/models/category_four_model.dart';import 'package:flutter/material.dart';/// A controller class for the CategoryFourScreen.
///
/// This class manages the state of the CategoryFourScreen, including the
/// current categoryFourModelObj
class CategoryFourController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<CategoryFourModel> categoryFourModelObj = CategoryFourModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
