import '../controller/delivery_in_progress_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DeliveryInProgressOneScreen.
///
/// This class ensures that the DeliveryInProgressOneController is created when the
/// DeliveryInProgressOneScreen is first loaded.
class DeliveryInProgressOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliveryInProgressOneController());
  }
}
