import '../controller/successfull_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SuccessfullScreen.
///
/// This class ensures that the SuccessfullController is created when the
/// SuccessfullScreen is first loaded.
class SuccessfullBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessfullController());
  }
}
