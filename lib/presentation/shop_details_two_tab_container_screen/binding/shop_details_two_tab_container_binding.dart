import '../controller/shop_details_two_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ShopDetailsTwoTabContainerScreen.
///
/// This class ensures that the ShopDetailsTwoTabContainerController is created when the
/// ShopDetailsTwoTabContainerScreen is first loaded.
class ShopDetailsTwoTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShopDetailsTwoTabContainerController());
  }
}
