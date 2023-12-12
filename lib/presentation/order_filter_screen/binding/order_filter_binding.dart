import '../controller/order_filter_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrderFilterScreen.
///
/// This class ensures that the OrderFilterController is created when the
/// OrderFilterScreen is first loaded.
class OrderFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderFilterController());
  }
}
