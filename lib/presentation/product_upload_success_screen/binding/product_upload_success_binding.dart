import '../controller/product_upload_success_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductUploadSuccessScreen.
///
/// This class ensures that the ProductUploadSuccessController is created when the
/// ProductUploadSuccessScreen is first loaded.
class ProductUploadSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductUploadSuccessController());
  }
}
