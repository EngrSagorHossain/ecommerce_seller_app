import '../controller/shop_create_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ShopCreateScreen.
///
/// This class ensures that the ShopCreateController is created when the
/// ShopCreateScreen is first loaded.
class ShopCreateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShopCreateController());
  }
}
