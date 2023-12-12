import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/inbox_screen/models/inbox_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the InboxScreen.
///
/// This class manages the state of the InboxScreen, including the
/// current inboxModelObj
class InboxController extends GetxController {
  TextEditingController messageEightController = TextEditingController();

  TextEditingController messageController = TextEditingController();

  Rx<InboxModel> inboxModelObj = InboxModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageEightController.dispose();
    messageController.dispose();
  }
}
