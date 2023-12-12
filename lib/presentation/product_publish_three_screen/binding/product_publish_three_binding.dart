import '../controller/product_publish_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductPublishThreeScreen.
///
/// This class ensures that the ProductPublishThreeController is created when the
/// ProductPublishThreeScreen is first loaded.
class ProductPublishThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductPublishThreeController());
  }
}
