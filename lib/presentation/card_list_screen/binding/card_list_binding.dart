import '../controller/card_list_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CardListScreen.
///
/// This class ensures that the CardListController is created when the
/// CardListScreen is first loaded.
class CardListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardListController());
  }
}
