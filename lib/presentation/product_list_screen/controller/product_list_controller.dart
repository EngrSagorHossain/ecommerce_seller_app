import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/product_list_screen/models/product_list_model.dart';import 'package:flutter/material.dart';/// A controller class for the ProductListScreen.
///
/// This class manages the state of the ProductListScreen, including the
/// current productListModelObj
class ProductListController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<ProductListModel> productListModelObj = ProductListModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
