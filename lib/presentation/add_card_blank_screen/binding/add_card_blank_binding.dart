import '../controller/add_card_blank_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddCardBlankScreen.
///
/// This class ensures that the AddCardBlankController is created when the
/// AddCardBlankScreen is first loaded.
class AddCardBlankBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddCardBlankController());
  }
}
