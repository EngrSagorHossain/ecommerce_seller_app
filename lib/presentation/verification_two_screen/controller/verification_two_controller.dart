import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/verification_two_screen/models/verification_two_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the VerificationTwoScreen.
///
/// This class manages the state of the VerificationTwoScreen, including the
/// current verificationTwoModelObj
class VerificationTwoController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<VerificationTwoModel> verificationTwoModelObj = VerificationTwoModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
