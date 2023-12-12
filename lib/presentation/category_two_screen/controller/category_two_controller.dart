import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/category_two_screen/models/category_two_model.dart';import 'package:flutter/material.dart';/// A controller class for the CategoryTwoScreen.
///
/// This class manages the state of the CategoryTwoScreen, including the
/// current categoryTwoModelObj
class CategoryTwoController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<CategoryTwoModel> categoryTwoModelObj = CategoryTwoModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
