import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/category_one_screen/models/category_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the CategoryOneScreen.
///
/// This class manages the state of the CategoryOneScreen, including the
/// current categoryOneModelObj
class CategoryOneController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<CategoryOneModel> categoryOneModelObj = CategoryOneModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
