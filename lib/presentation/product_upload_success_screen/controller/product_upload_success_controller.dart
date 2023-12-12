import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/product_upload_success_screen/models/product_upload_success_model.dart';

/// A controller class for the ProductUploadSuccessScreen.
///
/// This class manages the state of the ProductUploadSuccessScreen, including the
/// current productUploadSuccessModelObj
class ProductUploadSuccessController extends GetxController {
  Rx<ProductUploadSuccessModel> productUploadSuccessModelObj =
      ProductUploadSuccessModel().obs;
}
