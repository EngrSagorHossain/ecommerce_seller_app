import '../controller/create_package_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreatePackageScreen.
///
/// This class ensures that the CreatePackageController is created when the
/// CreatePackageScreen is first loaded.
class CreatePackageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreatePackageController());
  }
}
