import '../controller/add_policy_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddPolicyTwoScreen.
///
/// This class ensures that the AddPolicyTwoController is created when the
/// AddPolicyTwoScreen is first loaded.
class AddPolicyTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPolicyTwoController());
  }
}
