import '../controller/add_policy_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddPolicyScreen.
///
/// This class ensures that the AddPolicyController is created when the
/// AddPolicyScreen is first loaded.
class AddPolicyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPolicyController());
  }
}
