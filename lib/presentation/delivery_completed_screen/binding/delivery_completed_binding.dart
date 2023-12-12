import '../controller/delivery_completed_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DeliveryCompletedScreen.
///
/// This class ensures that the DeliveryCompletedController is created when the
/// DeliveryCompletedScreen is first loaded.
class DeliveryCompletedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliveryCompletedController());
  }
}
