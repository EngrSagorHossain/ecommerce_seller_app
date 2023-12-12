import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/signin_tab_container_screen/models/signin_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SigninTabContainerScreen.
///
/// This class manages the state of the SigninTabContainerScreen, including the
/// current signinTabContainerModelObj
class SigninTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<SigninTabContainerModel> signinTabContainerModelObj =
      SigninTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
