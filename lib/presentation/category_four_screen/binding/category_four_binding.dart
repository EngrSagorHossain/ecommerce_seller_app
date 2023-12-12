import '../controller/category_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CategoryFourScreen.
///
/// This class ensures that the CategoryFourController is created when the
/// CategoryFourScreen is first loaded.
class CategoryFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryFourController());
  }
}
