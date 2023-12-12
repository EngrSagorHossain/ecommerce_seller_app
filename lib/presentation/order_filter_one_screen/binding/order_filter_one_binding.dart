import '../controller/order_filter_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrderFilterOneScreen.
///
/// This class ensures that the OrderFilterOneController is created when the
/// OrderFilterOneScreen is first loaded.
class OrderFilterOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderFilterOneController());
  }
}
