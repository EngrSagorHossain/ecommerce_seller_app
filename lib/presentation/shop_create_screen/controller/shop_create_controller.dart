import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/shop_create_screen/models/shop_create_model.dart';

/// A controller class for the ShopCreateScreen.
///
/// This class manages the state of the ShopCreateScreen, including the
/// current shopCreateModelObj
class ShopCreateController extends GetxController {
  Rx<ShopCreateModel> shopCreateModelObj = ShopCreateModel().obs;
}
