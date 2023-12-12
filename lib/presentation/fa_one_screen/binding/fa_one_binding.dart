import '../controller/fa_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FaOneScreen.
///
/// This class ensures that the FaOneController is created when the
/// FaOneScreen is first loaded.
class FaOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FaOneController());
  }
}
