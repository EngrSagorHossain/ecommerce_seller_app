import '../controller/search_package_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchPackageOneScreen.
///
/// This class ensures that the SearchPackageOneController is created when the
/// SearchPackageOneScreen is first loaded.
class SearchPackageOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchPackageOneController());
  }
}
