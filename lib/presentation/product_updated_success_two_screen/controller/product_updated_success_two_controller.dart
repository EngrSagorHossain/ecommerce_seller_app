import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/product_updated_success_two_screen/models/product_updated_success_two_model.dart';

/// A controller class for the ProductUpdatedSuccessTwoScreen.
///
/// This class manages the state of the ProductUpdatedSuccessTwoScreen, including the
/// current productUpdatedSuccessTwoModelObj
class ProductUpdatedSuccessTwoController extends GetxController {
  Rx<ProductUpdatedSuccessTwoModel> productUpdatedSuccessTwoModelObj =
      ProductUpdatedSuccessTwoModel().obs;
}
