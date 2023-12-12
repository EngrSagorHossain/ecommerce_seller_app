import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/edit_product_one_screen/models/edit_product_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the EditProductOneScreen.
///
/// This class manages the state of the EditProductOneScreen, including the
/// current editProductOneModelObj
class EditProductOneController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<EditProductOneModel> editProductOneModelObj = EditProductOneModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
