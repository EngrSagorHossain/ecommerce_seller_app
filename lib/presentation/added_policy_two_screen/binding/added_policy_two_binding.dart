import '../controller/added_policy_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddedPolicyTwoScreen.
///
/// This class ensures that the AddedPolicyTwoController is created when the
/// AddedPolicyTwoScreen is first loaded.
class AddedPolicyTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddedPolicyTwoController());
  }
}
