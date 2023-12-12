import '../controller/product_updated_success_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductUpdatedSuccessTwoScreen.
///
/// This class ensures that the ProductUpdatedSuccessTwoController is created when the
/// ProductUpdatedSuccessTwoScreen is first loaded.
class ProductUpdatedSuccessTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductUpdatedSuccessTwoController());
  }
}
