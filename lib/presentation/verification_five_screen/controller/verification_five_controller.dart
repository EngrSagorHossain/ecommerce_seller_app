import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/verification_five_screen/models/verification_five_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the VerificationFiveScreen.
///
/// This class manages the state of the VerificationFiveScreen, including the
/// current verificationFiveModelObj
class VerificationFiveController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<VerificationFiveModel> verificationFiveModelObj = VerificationFiveModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
