import '../controller/added_policy_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddedPolicyScreen.
///
/// This class ensures that the AddedPolicyController is created when the
/// AddedPolicyScreen is first loaded.
class AddedPolicyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddedPolicyController());
  }
}
