import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/shop_details_one_page/models/shop_details_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the ShopDetailsOnePage.
///
/// This class manages the state of the ShopDetailsOnePage, including the
/// current shopDetailsOneModelObj
class ShopDetailsOneController extends GetxController {ShopDetailsOneController(this.shopDetailsOneModelObj);

TextEditingController nameController = TextEditingController();

TextEditingController ownerNIDPassportNumberController = TextEditingController();

TextEditingController phoneController = TextEditingController();

TextEditingController emailController = TextEditingController();

Rx<ShopDetailsOneModel> shopDetailsOneModelObj;

Rx<bool> informationValidity = false.obs;

@override void onClose() { super.onClose(); nameController.dispose(); ownerNIDPassportNumberController.dispose(); phoneController.dispose(); emailController.dispose(); } 
 }
