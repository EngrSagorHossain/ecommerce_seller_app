import '../controller/add_card_blank_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddCardBlankOneScreen.
///
/// This class ensures that the AddCardBlankOneController is created when the
/// AddCardBlankOneScreen is first loaded.
class AddCardBlankOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddCardBlankOneController());
  }
}
