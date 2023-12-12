import '../controller/category_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CategoryOneScreen.
///
/// This class ensures that the CategoryOneController is created when the
/// CategoryOneScreen is first loaded.
class CategoryOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryOneController());
  }
}
