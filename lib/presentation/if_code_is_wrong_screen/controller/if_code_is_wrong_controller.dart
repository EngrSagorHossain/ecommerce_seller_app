import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/if_code_is_wrong_screen/models/if_code_is_wrong_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the IfCodeIsWrongScreen.
///
/// This class manages the state of the IfCodeIsWrongScreen, including the
/// current ifCodeIsWrongModelObj
class IfCodeIsWrongController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<IfCodeIsWrongModel> ifCodeIsWrongModelObj = IfCodeIsWrongModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
