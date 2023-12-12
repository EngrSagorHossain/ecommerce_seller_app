import '../controller/card_edit_or_delete_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CardEditOrDeleteScreen.
///
/// This class ensures that the CardEditOrDeleteController is created when the
/// CardEditOrDeleteScreen is first loaded.
class CardEditOrDeleteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardEditOrDeleteController());
  }
}
