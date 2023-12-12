import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/verification_six_screen/models/verification_six_model.dart';import 'package:flutter/material.dart';/// A controller class for the VerificationSixScreen.
///
/// This class manages the state of the VerificationSixScreen, including the
/// current verificationSixModelObj
class VerificationSixController extends GetxController {TextEditingController emailController = TextEditingController();

Rx<VerificationSixModel> verificationSixModelObj = VerificationSixModel().obs;

@override void onClose() { super.onClose(); emailController.dispose(); } 
 }
