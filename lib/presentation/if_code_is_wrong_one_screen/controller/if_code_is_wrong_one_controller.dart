import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/if_code_is_wrong_one_screen/models/if_code_is_wrong_one_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the IfCodeIsWrongOneScreen.
///
/// This class manages the state of the IfCodeIsWrongOneScreen, including the
/// current ifCodeIsWrongOneModelObj
class IfCodeIsWrongOneController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<IfCodeIsWrongOneModel> ifCodeIsWrongOneModelObj = IfCodeIsWrongOneModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
