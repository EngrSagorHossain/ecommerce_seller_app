import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/add_product_one_screen/models/add_product_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddProductOneScreen.
///
/// This class manages the state of the AddProductOneScreen, including the
/// current addProductOneModelObj
class AddProductOneController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController phoneController = TextEditingController();

TextEditingController zipcodeController = TextEditingController();

Rx<AddProductOneModel> addProductOneModelObj = AddProductOneModel().obs;

@override void onClose() { super.onClose(); nameController.dispose(); phoneController.dispose(); zipcodeController.dispose(); } 
 }
