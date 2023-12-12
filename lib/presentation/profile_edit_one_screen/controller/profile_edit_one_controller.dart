import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/profile_edit_one_screen/models/profile_edit_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileEditOneScreen.
///
/// This class manages the state of the ProfileEditOneScreen, including the
/// current profileEditOneModelObj
class ProfileEditOneController extends GetxController {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  Rx<ProfileEditOneModel> profileEditOneModelObj = ProfileEditOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
  }
}
