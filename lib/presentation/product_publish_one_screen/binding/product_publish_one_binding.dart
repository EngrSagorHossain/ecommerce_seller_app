import '../controller/product_publish_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductPublishOneScreen.
///
/// This class ensures that the ProductPublishOneController is created when the
/// ProductPublishOneScreen is first loaded.
class ProductPublishOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductPublishOneController());
  }
}
