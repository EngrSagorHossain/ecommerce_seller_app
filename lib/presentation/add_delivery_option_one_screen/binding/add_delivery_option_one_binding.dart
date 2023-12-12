import '../controller/add_delivery_option_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddDeliveryOptionOneScreen.
///
/// This class ensures that the AddDeliveryOptionOneController is created when the
/// AddDeliveryOptionOneScreen is first loaded.
class AddDeliveryOptionOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddDeliveryOptionOneController());
  }
}
