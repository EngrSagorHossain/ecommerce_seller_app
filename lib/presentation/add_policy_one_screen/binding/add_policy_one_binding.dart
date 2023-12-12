import '../controller/add_policy_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddPolicyOneScreen.
///
/// This class ensures that the AddPolicyOneController is created when the
/// AddPolicyOneScreen is first loaded.
class AddPolicyOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPolicyOneController());
  }
}
