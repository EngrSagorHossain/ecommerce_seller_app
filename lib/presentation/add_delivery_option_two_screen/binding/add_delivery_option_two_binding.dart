import '../controller/add_delivery_option_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddDeliveryOptionTwoScreen.
///
/// This class ensures that the AddDeliveryOptionTwoController is created when the
/// AddDeliveryOptionTwoScreen is first loaded.
class AddDeliveryOptionTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddDeliveryOptionTwoController());
  }
}
