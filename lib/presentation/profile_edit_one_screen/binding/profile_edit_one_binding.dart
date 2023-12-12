import '../controller/profile_edit_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileEditOneScreen.
///
/// This class ensures that the ProfileEditOneController is created when the
/// ProfileEditOneScreen is first loaded.
class ProfileEditOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileEditOneController());
  }
}
