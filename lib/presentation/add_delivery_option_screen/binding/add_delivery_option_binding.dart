import '../controller/add_delivery_option_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddDeliveryOptionScreen.
///
/// This class ensures that the AddDeliveryOptionController is created when the
/// AddDeliveryOptionScreen is first loaded.
class AddDeliveryOptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddDeliveryOptionController());
  }
}
