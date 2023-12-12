import '../controller/product_publish_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductPublishScreen.
///
/// This class ensures that the ProductPublishController is created when the
/// ProductPublishScreen is first loaded.
class ProductPublishBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductPublishController());
  }
}
