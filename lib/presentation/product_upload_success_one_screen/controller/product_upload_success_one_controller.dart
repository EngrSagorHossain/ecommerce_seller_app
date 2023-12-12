import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/product_upload_success_one_screen/models/product_upload_success_one_model.dart';

/// A controller class for the ProductUploadSuccessOneScreen.
///
/// This class manages the state of the ProductUploadSuccessOneScreen, including the
/// current productUploadSuccessOneModelObj
class ProductUploadSuccessOneController extends GetxController {
  Rx<ProductUploadSuccessOneModel> productUploadSuccessOneModelObj =
      ProductUploadSuccessOneModel().obs;
}
