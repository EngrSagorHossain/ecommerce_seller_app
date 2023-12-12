import '../controller/added_delivery_option_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddedDeliveryOptionScreen.
///
/// This class ensures that the AddedDeliveryOptionController is created when the
/// AddedDeliveryOptionScreen is first loaded.
class AddedDeliveryOptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddedDeliveryOptionController());
  }
}
