import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/verification_four_screen/models/verification_four_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the VerificationFourScreen.
///
/// This class manages the state of the VerificationFourScreen, including the
/// current verificationFourModelObj
class VerificationFourController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<VerificationFourModel> verificationFourModelObj = VerificationFourModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
