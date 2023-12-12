import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/search_product_screen/models/search_product_model.dart';import 'package:flutter/material.dart';/// A controller class for the SearchProductScreen.
///
/// This class manages the state of the SearchProductScreen, including the
/// current searchProductModelObj
class SearchProductController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<SearchProductModel> searchProductModelObj = SearchProductModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
