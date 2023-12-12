import '../controller/successfull_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SuccessfullOneScreen.
///
/// This class ensures that the SuccessfullOneController is created when the
/// SuccessfullOneScreen is first loaded.
class SuccessfullOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessfullOneController());
  }
}
