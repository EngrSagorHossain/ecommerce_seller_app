import '../controller/shop_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ShopDetailsScreen.
///
/// This class ensures that the ShopDetailsController is created when the
/// ShopDetailsScreen is first loaded.
class ShopDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShopDetailsController());
  }
}
