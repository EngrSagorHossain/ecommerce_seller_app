import '../controller/added_policy_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddedPolicyOneScreen.
///
/// This class ensures that the AddedPolicyOneController is created when the
/// AddedPolicyOneScreen is first loaded.
class AddedPolicyOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddedPolicyOneController());
  }
}
