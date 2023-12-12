import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/create_package_screen/models/create_package_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreatePackageScreen.
///
/// This class manages the state of the CreatePackageScreen, including the
/// current createPackageModelObj
class CreatePackageController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<CreatePackageModel> createPackageModelObj = CreatePackageModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
