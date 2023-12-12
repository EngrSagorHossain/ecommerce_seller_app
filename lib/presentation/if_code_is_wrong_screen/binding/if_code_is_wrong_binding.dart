import '../controller/if_code_is_wrong_controller.dart';
import 'package:get/get.dart';

/// A binding class for the IfCodeIsWrongScreen.
///
/// This class ensures that the IfCodeIsWrongController is created when the
/// IfCodeIsWrongScreen is first loaded.
class IfCodeIsWrongBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IfCodeIsWrongController());
  }
}
