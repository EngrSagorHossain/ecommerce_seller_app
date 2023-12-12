import '../controller/search_product_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchProductScreen.
///
/// This class ensures that the SearchProductController is created when the
/// SearchProductScreen is first loaded.
class SearchProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchProductController());
  }
}
