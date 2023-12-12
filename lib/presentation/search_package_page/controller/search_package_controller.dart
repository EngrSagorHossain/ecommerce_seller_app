import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/search_package_page/models/search_package_model.dart';import 'package:flutter/material.dart';/// A controller class for the SearchPackagePage.
///
/// This class manages the state of the SearchPackagePage, including the
/// current searchPackageModelObj
class SearchPackageController extends GetxController {SearchPackageController(this.searchPackageModelObj);

TextEditingController searchController = TextEditingController();

Rx<SearchPackageModel> searchPackageModelObj;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
