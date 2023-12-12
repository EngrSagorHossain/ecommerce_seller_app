import '../controller/package_details_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PackageDetailsThreeScreen.
///
/// This class ensures that the PackageDetailsThreeController is created when the
/// PackageDetailsThreeScreen is first loaded.
class PackageDetailsThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PackageDetailsThreeController());
  }
}
