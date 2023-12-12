import '../controller/add_product_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddProductOneScreen.
///
/// This class ensures that the AddProductOneController is created when the
/// AddProductOneScreen is first loaded.
class AddProductOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddProductOneController());
  }
}
