import '../controller/package_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PackageDetailsScreen.
///
/// This class ensures that the PackageDetailsController is created when the
/// PackageDetailsScreen is first loaded.
class PackageDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PackageDetailsController());
  }
}
