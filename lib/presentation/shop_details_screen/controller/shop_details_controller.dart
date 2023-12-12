import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/shop_details_screen/models/shop_details_model.dart';import 'package:flutter/material.dart';/// A controller class for the ShopDetailsScreen.
///
/// This class manages the state of the ShopDetailsScreen, including the
/// current shopDetailsModelObj
class ShopDetailsController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController addressController = TextEditingController();

TextEditingController enterTinNumberController = TextEditingController();

TextEditingController enterTinNumberController1 = TextEditingController();

Rx<ShopDetailsModel> shopDetailsModelObj = ShopDetailsModel().obs;

@override void onClose() { super.onClose(); nameController.dispose(); addressController.dispose(); enterTinNumberController.dispose(); enterTinNumberController1.dispose(); } 
 }
