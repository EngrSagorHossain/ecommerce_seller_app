import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/edit_product_screen/models/edit_product_model.dart';import 'package:flutter/material.dart';/// A controller class for the EditProductScreen.
///
/// This class manages the state of the EditProductScreen, including the
/// current editProductModelObj
class EditProductController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController phoneController = TextEditingController();

TextEditingController zipcodeController = TextEditingController();

Rx<EditProductModel> editProductModelObj = EditProductModel().obs;

@override void onClose() { super.onClose(); nameController.dispose(); phoneController.dispose(); zipcodeController.dispose(); } 
 }
