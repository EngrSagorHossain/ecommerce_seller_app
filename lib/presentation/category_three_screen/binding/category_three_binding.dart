import '../controller/category_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CategoryThreeScreen.
///
/// This class ensures that the CategoryThreeController is created when the
/// CategoryThreeScreen is first loaded.
class CategoryThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryThreeController());
  }
}
