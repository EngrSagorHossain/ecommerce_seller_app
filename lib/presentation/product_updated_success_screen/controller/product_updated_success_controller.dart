import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/product_updated_success_screen/models/product_updated_success_model.dart';

/// A controller class for the ProductUpdatedSuccessScreen.
///
/// This class manages the state of the ProductUpdatedSuccessScreen, including the
/// current productUpdatedSuccessModelObj
class ProductUpdatedSuccessController extends GetxController {
  Rx<ProductUpdatedSuccessModel> productUpdatedSuccessModelObj =
      ProductUpdatedSuccessModel().obs;
}
