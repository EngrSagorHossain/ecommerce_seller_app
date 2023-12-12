import '../controller/product_updated_success_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductUpdatedSuccessScreen.
///
/// This class ensures that the ProductUpdatedSuccessController is created when the
/// ProductUpdatedSuccessScreen is first loaded.
class ProductUpdatedSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductUpdatedSuccessController());
  }
}
