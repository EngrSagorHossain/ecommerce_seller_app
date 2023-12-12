import '../controller/product_publish_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductPublishTwoScreen.
///
/// This class ensures that the ProductPublishTwoController is created when the
/// ProductPublishTwoScreen is first loaded.
class ProductPublishTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductPublishTwoController());
  }
}
