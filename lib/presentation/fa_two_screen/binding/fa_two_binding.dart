import '../controller/fa_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FaTwoScreen.
///
/// This class ensures that the FaTwoController is created when the
/// FaTwoScreen is first loaded.
class FaTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FaTwoController());
  }
}
