import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/signin_page/models/signin_model.dart';import 'package:flutter/material.dart';/// A controller class for the SigninPage.
///
/// This class manages the state of the SigninPage, including the
/// current signinModelObj
class SigninController extends GetxController {SigninController(this.signinModelObj);

TextEditingController passwordController = TextEditingController();

TextEditingController passwordController1 = TextEditingController();

Rx<SigninModel> signinModelObj;

@override void onClose() { super.onClose(); passwordController.dispose(); passwordController1.dispose(); } 
 }
