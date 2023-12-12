import '../controller/delivery_in_queue_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DeliveryInQueueScreen.
///
/// This class ensures that the DeliveryInQueueController is created when the
/// DeliveryInQueueScreen is first loaded.
class DeliveryInQueueBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliveryInQueueController());
  }
}
