import '../controller/added_delivery_option_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddedDeliveryOptionOneScreen.
///
/// This class ensures that the AddedDeliveryOptionOneController is created when the
/// AddedDeliveryOptionOneScreen is first loaded.
class AddedDeliveryOptionOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddedDeliveryOptionOneController());
  }
}
