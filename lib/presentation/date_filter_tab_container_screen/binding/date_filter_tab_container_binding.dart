import '../controller/date_filter_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DateFilterTabContainerScreen.
///
/// This class ensures that the DateFilterTabContainerController is created when the
/// DateFilterTabContainerScreen is first loaded.
class DateFilterTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DateFilterTabContainerController());
  }
}
