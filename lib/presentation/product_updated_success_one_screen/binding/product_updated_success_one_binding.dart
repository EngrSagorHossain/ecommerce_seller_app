import '../controller/product_updated_success_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductUpdatedSuccessOneScreen.
///
/// This class ensures that the ProductUpdatedSuccessOneController is created when the
/// ProductUpdatedSuccessOneScreen is first loaded.
class ProductUpdatedSuccessOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductUpdatedSuccessOneController());
  }
}
