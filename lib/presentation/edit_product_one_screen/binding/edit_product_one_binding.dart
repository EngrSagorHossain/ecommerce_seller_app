import '../controller/edit_product_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditProductOneScreen.
///
/// This class ensures that the EditProductOneController is created when the
/// EditProductOneScreen is first loaded.
class EditProductOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditProductOneController());
  }
}
