import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/search_package_one_screen/models/search_package_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the SearchPackageOneScreen.
///
/// This class manages the state of the SearchPackageOneScreen, including the
/// current searchPackageOneModelObj
class SearchPackageOneController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<SearchPackageOneModel> searchPackageOneModelObj = SearchPackageOneModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
