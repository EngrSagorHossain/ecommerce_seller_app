import '../controller/shop_details_one_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ShopDetailsOneTabContainerScreen.
///
/// This class ensures that the ShopDetailsOneTabContainerController is created when the
/// ShopDetailsOneTabContainerScreen is first loaded.
class ShopDetailsOneTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShopDetailsOneTabContainerController());
  }
}
