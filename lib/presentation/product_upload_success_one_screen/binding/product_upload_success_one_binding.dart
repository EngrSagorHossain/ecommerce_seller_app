import '../controller/product_upload_success_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductUploadSuccessOneScreen.
///
/// This class ensures that the ProductUploadSuccessOneController is created when the
/// ProductUploadSuccessOneScreen is first loaded.
class ProductUploadSuccessOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductUploadSuccessOneController());
  }
}
