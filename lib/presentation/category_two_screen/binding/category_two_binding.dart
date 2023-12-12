import '../controller/category_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CategoryTwoScreen.
///
/// This class ensures that the CategoryTwoController is created when the
/// CategoryTwoScreen is first loaded.
class CategoryTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryTwoController());
  }
}
