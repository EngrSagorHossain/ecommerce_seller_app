import '../controller/add_product_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddProductTwoScreen.
///
/// This class ensures that the AddProductTwoController is created when the
/// AddProductTwoScreen is first loaded.
class AddProductTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddProductTwoController());
  }
}
