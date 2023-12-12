import '../controller/delivery_in_queue_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DeliveryInQueueOneScreen.
///
/// This class ensures that the DeliveryInQueueOneController is created when the
/// DeliveryInQueueOneScreen is first loaded.
class DeliveryInQueueOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliveryInQueueOneController());
  }
}
