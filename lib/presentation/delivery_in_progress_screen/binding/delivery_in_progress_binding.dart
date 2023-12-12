import '../controller/delivery_in_progress_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DeliveryInProgressScreen.
///
/// This class ensures that the DeliveryInProgressController is created when the
/// DeliveryInProgressScreen is first loaded.
class DeliveryInProgressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliveryInProgressController());
  }
}
