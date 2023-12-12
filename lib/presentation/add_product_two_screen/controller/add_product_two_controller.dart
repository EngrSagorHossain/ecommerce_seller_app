import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/add_product_two_screen/models/add_product_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddProductTwoScreen.
///
/// This class manages the state of the AddProductTwoScreen, including the
/// current addProductTwoModelObj
class AddProductTwoController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  Rx<AddProductTwoModel> addProductTwoModelObj = AddProductTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    phoneController.dispose();
    zipcodeController.dispose();
  }
}
