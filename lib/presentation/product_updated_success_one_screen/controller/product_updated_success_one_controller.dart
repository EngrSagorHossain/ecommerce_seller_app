import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/product_updated_success_one_screen/models/product_updated_success_one_model.dart';

/// A controller class for the ProductUpdatedSuccessOneScreen.
///
/// This class manages the state of the ProductUpdatedSuccessOneScreen, including the
/// current productUpdatedSuccessOneModelObj
class ProductUpdatedSuccessOneController extends GetxController {
  Rx<ProductUpdatedSuccessOneModel> productUpdatedSuccessOneModelObj =
      ProductUpdatedSuccessOneModel().obs;
}
