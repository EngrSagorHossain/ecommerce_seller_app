import '../controller/search_package_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchPackageContainerScreen.
///
/// This class ensures that the SearchPackageContainerController is created when the
/// SearchPackageContainerScreen is first loaded.
class SearchPackageContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchPackageContainerController());
  }
}
