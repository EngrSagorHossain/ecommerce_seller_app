import '../controller/empty_inbox_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EmptyInboxScreen.
///
/// This class ensures that the EmptyInboxController is created when the
/// EmptyInboxScreen is first loaded.
class EmptyInboxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmptyInboxController());
  }
}
