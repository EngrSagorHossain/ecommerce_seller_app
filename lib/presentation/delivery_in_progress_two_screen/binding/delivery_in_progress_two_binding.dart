import '../controller/delivery_in_progress_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DeliveryInProgressTwoScreen.
///
/// This class ensures that the DeliveryInProgressTwoController is created when the
/// DeliveryInProgressTwoScreen is first loaded.
class DeliveryInProgressTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliveryInProgressTwoController());
  }
}
