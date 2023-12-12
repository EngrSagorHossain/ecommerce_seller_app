import '../controller/added_delivery_option_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddedDeliveryOptionTwoScreen.
///
/// This class ensures that the AddedDeliveryOptionTwoController is created when the
/// AddedDeliveryOptionTwoScreen is first loaded.
class AddedDeliveryOptionTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddedDeliveryOptionTwoController());
  }
}
