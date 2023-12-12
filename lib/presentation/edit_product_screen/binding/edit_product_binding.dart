import '../controller/edit_product_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditProductScreen.
///
/// This class ensures that the EditProductController is created when the
/// EditProductScreen is first loaded.
class EditProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditProductController());
  }
}
