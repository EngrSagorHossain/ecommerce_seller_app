import '../controller/inbox_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InboxScreen.
///
/// This class ensures that the InboxController is created when the
/// InboxScreen is first loaded.
class InboxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InboxController());
  }
}
