import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/fa_two_screen/models/fa_two_model.dart';import 'package:flutter/material.dart';/// A controller class for the FaTwoScreen.
///
/// This class manages the state of the FaTwoScreen, including the
/// current faTwoModelObj
class FaTwoController extends GetxController {TextEditingController emailController = TextEditingController();

Rx<FaTwoModel> faTwoModelObj = FaTwoModel().obs;

@override void onClose() { super.onClose(); emailController.dispose(); } 
 }
