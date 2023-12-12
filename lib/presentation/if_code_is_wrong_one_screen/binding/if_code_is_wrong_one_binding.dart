import '../controller/if_code_is_wrong_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the IfCodeIsWrongOneScreen.
///
/// This class ensures that the IfCodeIsWrongOneController is created when the
/// IfCodeIsWrongOneScreen is first loaded.
class IfCodeIsWrongOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IfCodeIsWrongOneController());
  }
}
