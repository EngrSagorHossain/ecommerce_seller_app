import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/signup_page/models/signup_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignupPage.
///
/// This class manages the state of the SignupPage, including the
/// current signupModelObj
class SignupController extends GetxController {SignupController(this.signupModelObj);

TextEditingController createAccountText1Controller = TextEditingController();

TextEditingController createAccountText2Controller = TextEditingController();

TextEditingController emailEditTextController = TextEditingController();

TextEditingController phoneNumberEditTextController = TextEditingController();

TextEditingController passwordEditTextController = TextEditingController();

Rx<SignupModel> signupModelObj;

@override void onClose() { super.onClose(); createAccountText1Controller.dispose(); createAccountText2Controller.dispose(); emailEditTextController.dispose(); phoneNumberEditTextController.dispose(); passwordEditTextController.dispose(); } 
 }
