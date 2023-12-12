import '../controller/package_details_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PackageDetailsFourScreen.
///
/// This class ensures that the PackageDetailsFourController is created when the
/// PackageDetailsFourScreen is first loaded.
class PackageDetailsFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PackageDetailsFourController());
  }
}
