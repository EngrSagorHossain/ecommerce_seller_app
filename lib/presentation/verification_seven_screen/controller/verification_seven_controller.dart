import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/verification_seven_screen/models/verification_seven_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the VerificationSevenScreen.
///
/// This class manages the state of the VerificationSevenScreen, including the
/// current verificationSevenModelObj
class VerificationSevenController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<VerificationSevenModel> verificationSevenModelObj = VerificationSevenModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
