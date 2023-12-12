import '../controller/signin_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SigninTabContainerScreen.
///
/// This class ensures that the SigninTabContainerController is created when the
/// SigninTabContainerScreen is first loaded.
class SigninTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SigninTabContainerController());
  }
}
