import '../controller/home_settings_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeSettingsScreen.
///
/// This class ensures that the HomeSettingsController is created when the
/// HomeSettingsScreen is first loaded.
class HomeSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeSettingsController());
  }
}
