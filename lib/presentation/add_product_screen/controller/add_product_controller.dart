import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/add_product_screen/models/add_product_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddProductScreen.
///
/// This class manages the state of the AddProductScreen, including the
/// current addProductModelObj
class AddProductController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  Rx<AddProductModel> addProductModelObj = AddProductModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    phoneController.dispose();
    zipcodeController.dispose();
  }
}
